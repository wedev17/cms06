threads Integer(ENV[‘MIN_THREADS’] || 1), Integer(ENV[‘MAX_THREADS’] || 16)

workers Integer(ENV[‘PUMA_WORKERS’] || 3)

rackup DefaultRackup
port ENV[‘PORT’] || 3000
environment ENV[‘RACK_ENV’] || ‘development’
preload_app!

ActiveSupport.on_load(:active_record) do
ActiveRecord::Base.establish_connection
end
end