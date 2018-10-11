cask 'graphql-playground' do
  version '1.7.0'
  sha256 '61d3dc658a885b21103f522afa18194deca0752202ccd6ca02e9d630869ce79f'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
