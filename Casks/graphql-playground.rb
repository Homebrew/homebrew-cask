cask 'graphql-playground' do
  version '1.5.0'
  sha256 'd5018aeab61547e9de5c31acc12771590cb99c7803c7374c57cb07725feb431f'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: '7a717783084dd305e7aea3a3c257b3c556764fe743054337262d4474fde667b6'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
