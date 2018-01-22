cask 'graphql-playground' do
  version '1.4.2'
  sha256 'ef655ed4771a10092fd02240fc3b7230bd4bcde518401029c9dab03e366ce7dc'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: 'bc0d773a1ed173c6b7fc892be16348c77991e5fa90baf0a4f1148e96fad85848'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
