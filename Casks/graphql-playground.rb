cask 'graphql-playground' do
  version '1.8.7'
  sha256 '91071e9fb0cce6ad6078ffd6a0bd4f23fe086e357fce426766286b713d1ca5ab'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
