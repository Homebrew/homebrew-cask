cask 'graphiql' do
  version '0.7.2'
  sha256 '204dd3db5c11bf265700d8d57defc4798cd0040651f751f35e2a646cb4846ac7'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/graphiql-app-#{version}-mac.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: 'd91f8f51431a799905b0c52fc2e4d4496923cfe775362ff5a2887ec003d607fb'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
