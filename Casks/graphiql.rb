cask 'graphiql' do
  version '0.5.0'
  sha256 '81bdfc1ef03210684cf42c7dfed770c0abf290f05596b29eb0ce85c08900b2d5'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '02fb19f384437cd5ae7e15c15e825e2f5c406944bc5e8db91543320b33c9b93f'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
