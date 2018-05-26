cask 'graphql-playground' do
  version '1.5.9'
  sha256 '84908c21d9b0c0723718a344718cf2c4297bb6c1026def4e50ee4ca5a1576a2d'

  url "https://github.com/prismagraphql/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prismagraphql/graphql-playground/releases.atom',
          checkpoint: 'a49e533c53e8785990bf903a9fe7a34799867b4cde87747e4e5626cda2118580'
  name 'GraphQL Playground'
  homepage 'https://github.com/prismagraphql/graphql-playground'

  app 'GraphQL Playground.app'
end
