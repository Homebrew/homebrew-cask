cask 'graphql-playground' do
  version '1.4.3'
  sha256 '8b4ad069dfe763003db51742b74a46aeb40ae74b6496bad5dc47088f7b546e59'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: '890a86b8a84aef86d5d87a0c4e7f863e701580834c5d689510930c1c8c35e793'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
