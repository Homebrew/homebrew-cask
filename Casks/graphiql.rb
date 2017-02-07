cask 'graphiql' do
  version '0.5.0'
  sha256 '81bdfc1ef03210684cf42c7dfed770c0abf290f05596b29eb0ce85c08900b2d5'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: 'fce9560a17c24c08fae1ac23d2f0b08cee5a7db4c991c20609d060f667538ae3'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
