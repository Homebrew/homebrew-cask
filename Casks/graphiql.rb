cask 'graphiql' do
  version '0.4.0'
  sha256 '7f4c775a0f740363c3dd2e3881cdaf8456b5c5a0b6dc517e44fc2f598c5fed86'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '7f4c775a0f740363c3dd2e3881cdaf8456b5c5a0b6dc517e44fc2f598c5fed86'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'
  license :mit

  app 'GraphiQL.app'
end
