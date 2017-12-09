cask 'graphql-playground' do
  version '1.3.5'
  sha256 '9f5fae194811f250e18d2f8b51dfb6bd71d95f967e206b5ed99aba0c3749245b'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/playground-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: 'ac2d4c0ed7344c8e880721d603cb5148996b7ea9f9e0569eac4d95dc6aa004c5'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
