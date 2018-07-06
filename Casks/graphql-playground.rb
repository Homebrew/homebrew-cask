cask 'graphql-playground' do
  version '1.6.2'
  sha256 'a26effde7d740f35e1d5aaa2ec937a1989f6ae5fd9c86361210d5e333b4cc234'

  url "https://github.com/prismagraphql/graphql-playground/releases/download/#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prismagraphql/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prismagraphql/graphql-playground'

  app 'GraphQL Playground.app'
end
