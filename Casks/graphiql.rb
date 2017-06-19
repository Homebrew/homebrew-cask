cask 'graphiql' do
  version '0.6.0'
  sha256 '1c5120675779ef58bc1ee47cdf80e8d60c3d2b742bb8d312c310baf9fab53454'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL-#{version}.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: 'd54c56544f486fe870fcc2c5439c6c440758185675c76ea73748da3ffaca4c81'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
