cask 'graphiql' do
  version '0.6.1'
  sha256 'e465034d1fe4e367184a12ca32cf8a7ed1b480df3e38afe59c9e2e0870b9fd98'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/graphiql-app-#{version}-mac.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '74cb3c4731a8ac41a50f3248fecce8a3c2dd79eb102d1a93f904f7c1d627fa6a'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
