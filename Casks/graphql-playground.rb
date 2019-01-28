cask 'graphql-playground' do
  version '1.8.6'
  sha256 '40c4985dea9cfa2660728aa0d730f7f4ac12319890aae6f572fe2e1fa657b285'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
