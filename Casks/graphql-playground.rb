cask 'graphql-playground' do
  version '1.8.2'
  sha256 'f8e1717ba19fe6e93b5e5f65e7867c6ab356e422b498fac38b7dbc07eec77a38'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
