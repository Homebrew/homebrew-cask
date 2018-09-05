cask 'graphql-playground' do
  version '1.6.3'
  sha256 '6852aadc02bd1ae208953ddc9947164b4c3037029b9b00a635198ff7df99e8aa'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
