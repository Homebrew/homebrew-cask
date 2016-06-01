cask 'graphiql' do
  version '0.4.1'
  sha256 '34946a4503a193d6ec8d9fc7c84324d1fd585cd86605f36c7701c809fd398d58'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '34946a4503a193d6ec8d9fc7c84324d1fd585cd86605f36c7701c809fd398d58'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'
  license :mit

  app 'GraphiQL.app'
end
