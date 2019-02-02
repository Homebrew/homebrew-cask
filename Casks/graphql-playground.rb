cask 'graphql-playground' do
  version '1.8.9'
  sha256 '479a50d6b8aaf25debfe15da0fd4f5e700af4c19993cc5ba8774e90770106167'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
