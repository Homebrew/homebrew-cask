cask 'graphql-ide' do
  version '1.1.0'
  sha256 'df90c88d0963987d51d766c956f1ef9221c5463b4c1358b1d0c1de90e5bd1500'

  url "https://github.com/redound/graphql-ide/releases/download/v#{version}/GraphQL.IDE.app.zip"
  appcast 'https://github.com/redound/graphql-ide/releases.atom',
          checkpoint: '85a07b3f3077bd2139c2b4d42942c1a724a6a27c5e55387489d86c6aeb4d2b17'
  name 'GraphQL IDE'
  homepage 'https://github.com/redound/graphql-ide'

  app 'GraphQL IDE.app'
end
