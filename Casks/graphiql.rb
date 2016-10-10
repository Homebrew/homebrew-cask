cask 'graphiql' do
  version '0.4.2'
  sha256 'c99a7176614c1f3011e2e6968f7e07eb7d1625eb3f2e45b40e12098b81c0733a'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '245bad515cbdea11d0b0610edcd9b132143ad25fc7febd35b79bec2cec05863a'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
