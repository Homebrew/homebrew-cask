cask 'graphql-playground' do
  version '1.8.5'
  sha256 'b9551c4f125f366daaac0295681ec955c265413305d675ef58d2a4d6cd732314'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
