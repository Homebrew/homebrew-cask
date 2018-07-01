cask 'graphql-playground' do
  version '1.6.1'
  sha256 '8a78902c05b76426d1a72b07fbf229921e25c9f3d34133004f2af76a80e062c3'

  url "https://github.com/prismagraphql/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prismagraphql/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prismagraphql/graphql-playground'

  app 'GraphQL Playground.app'
end
