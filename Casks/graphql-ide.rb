cask 'graphql-ide' do
  version '1.1.0'
  sha256 '697b1618d416c18a17bb6176eda88a1187588b6f95bafb0f559bb6b9fcca8775'

  url "https://github.com/redound/graphql-ide/releases/download/v#{version}/GraphQL.IDE.app.zip"
  appcast 'https://github.com/redound/graphql-ide/releases.atom',
          checkpoint: '303b735e0bceec72e00116ef27afd394686f2c1aa0cd133a4ec658b28d900555'
  name 'GraphQL IDE'
  homepage 'https://github.com/redound/graphql-ide'

  app 'GraphQL IDE.app'
end
