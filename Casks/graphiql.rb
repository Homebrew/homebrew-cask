cask 'graphiql' do
  version '0.5.0'
  sha256 '9a20a7a48067c486c2c8148b4112556b06d932aa49e656073c422122d276ec97'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: 'fce9560a17c24c08fae1ac23d2f0b08cee5a7db4c991c20609d060f667538ae3'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
