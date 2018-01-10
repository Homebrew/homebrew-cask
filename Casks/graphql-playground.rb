cask 'graphql-playground' do
  version '1.3.23'
  sha256 'b7215849c8f5fb8e0fe4ccd5a6bb6fbe4ba31cd633927bfe3edb29a68d1b6b5b'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: '5f8475933c34ada20803b316798c686de15a3a41583baf996781934df6a71b9a'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
