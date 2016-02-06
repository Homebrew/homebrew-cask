cask 'graphiql' do
  version '0.3.1'
  sha256 '8fd079699b5668a4207109fa6451225e9491d45025df6bf8822eac314760faf4'

  url 'https://github.com/skevy/graphiql-app/releases/download/0.3.1/GraphiQL.zip'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'
  license :mit

  app 'GraphiQL.app'
end
