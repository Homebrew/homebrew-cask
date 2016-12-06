cask 'graphql-ide' do
  version '0.1.5'
  sha256 'fff77c227a9ea4991ef9cae356a9beede06c0bc8bd06d63007087cb22e2536ed'

  url "https://github.com/redound/graphql-ide/releases/download/#{version}/GraphQL.IDE.app.zip"
  appcast 'https://github.com/redound/graphql-ide/releases.atom',
          checkpoint: '972894e2e9f9abb69617e498fb406e0a92861d85c33dd61b44f8dfc4e917d3e4'
  name 'GraphQL IDE'
  homepage 'https://github.com/redound/graphql-ide'

  app 'GraphQL IDE.app'
end
