cask 'graphiql' do
  version '0.4.2'
  sha256 '245bad515cbdea11d0b0610edcd9b132143ad25fc7febd35b79bec2cec05863a'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '245bad515cbdea11d0b0610edcd9b132143ad25fc7febd35b79bec2cec05863a'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'
  license :mit

  app 'GraphiQL.app'
end
