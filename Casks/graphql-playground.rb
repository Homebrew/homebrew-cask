cask 'graphql-playground' do
  version '1.8.0'
  sha256 'e83c7d1c433d635193306c8d1f86a051abb73a57a3ea18520cc27b1072272901'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
