cask 'graphql-playground' do
  version '1.6.0'
  sha256 '121e7015fc076b4029d3ecc37e4ff65afb32f689f3f6cfd4ed8f4d86b084ec39'

  url "https://github.com/prismagraphql/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prismagraphql/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prismagraphql/graphql-playground'

  app 'GraphQL Playground.app'
end
