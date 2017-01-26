cask 'graphql-ide' do
  version '1.1.0'
  sha256 'df90c88d0963987d51d766c956f1ef9221c5463b4c1358b1d0c1de90e5bd1500'

  url "https://github.com/redound/graphql-ide/releases/download/v#{version}/GraphQL.IDE.app.zip"
  appcast 'https://github.com/redound/graphql-ide/releases.atom',
          checkpoint: '303b735e0bceec72e00116ef27afd394686f2c1aa0cd133a4ec658b28d900555'
  name 'GraphQL IDE'
  homepage 'https://github.com/redound/graphql-ide'

  app 'GraphQL IDE.app'
end
