cask 'graphiql' do
  version '0.7.0'
  sha256 '625da5f42acb58f5caf98ca3581d8f2c2d3b728592ae2f72c181cebefe0c0ee9'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/graphiql-app-#{version}-mac.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '7f75917adf6738b6c5d8c4637917d1dd03db065014c11fe08f8c58ad78cfdab4'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
