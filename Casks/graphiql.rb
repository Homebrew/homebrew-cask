cask 'graphiql' do
  version '0.7.1'
  sha256 '2487789d47e35eb47cdb75a0906fb67db703595e39f4c0e5ca6cb9bdf684a4d7'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/graphiql-app-#{version}-mac.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '1ccb10a783911d622d739e706ddfe58b32374036f460c9e2b6518050f16f3041'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
