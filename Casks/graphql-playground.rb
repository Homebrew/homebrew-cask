cask 'graphql-playground' do
  version '1.4.0'
  sha256 '8b5b13d71577f161d5257db919299a4f4ec3e9efd31547c5ed5f73a30dcbb4f4'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: 'f00c2e8909f701cf9244e1167d6cca23bac5cf81ed9c2e31963a55587e23b369'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
