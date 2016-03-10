cask 'graphiql' do
  version '0.3.2'
  sha256 'ff8d5d3c7eed6b81cc32337964e6992dfedda89952bbcd53835970db4ff21f11'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: 'fe1ba192557956677bb3f61f351dfe333317b93e3e9235655746fe38353c28df'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'
  license :mit

  app 'GraphiQL.app'
end
