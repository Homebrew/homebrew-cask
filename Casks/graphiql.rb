cask 'graphiql' do
  version '0.6.3'
  sha256 'db0bd648e89f8a97b38e8a818538a037b5f5e193891a323383f89ce06c1a05be'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL-app-#{version}-mac.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '0a2c95ee8e5b359e420c90e4f07e7b4529e8733667d93e33ccdc0f3ec1152453'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
