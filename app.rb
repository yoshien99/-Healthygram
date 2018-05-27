require 'sinatra'
require 'sinatra/reloader'

$stdout.sync = true

get '/' do
    erb :index
end

get '/info' do
    erb :info
end

post '/login' do
    puts params
    
    @email = params['email']
    @pwd = params['pwd']
    
    if @email == 'cutyha2@gmail.com' then
        'login!'
    else
        'error!'
    end
    
end