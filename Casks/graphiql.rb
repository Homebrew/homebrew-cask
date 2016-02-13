cask 'graphiql' do
  version '0.3.1'
  sha256 '8fd079699b5668a4207109fa6451225e9491d45025df6bf8822eac314760faf4'

  url "https://github.com/skevy/graphiql-app/releases/download/#{version}/GraphiQL.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '1c077fe42d1c770cf0034ac821dc74ef3fac9aecec22966acabe8f70c21965a4'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'
  license :mit

  app 'GraphiQL.app'
end
