cask 'graphql-playground' do
  version '1.8.3'
  sha256 'af57adb816d8f8fda148bbbeafacd10212e8ceb6ca893812853a51703e297300'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
