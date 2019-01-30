cask 'graphql-playground' do
  version '1.8.8'
  sha256 '30d803609d6884575c49dd529b420a264696b72ecf84049a77b327bb375541b0'

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prisma/graphql-playground/releases.atom'
  name 'GraphQL Playground'
  homepage 'https://github.com/prisma/graphql-playground'

  app 'GraphQL Playground.app'
end
