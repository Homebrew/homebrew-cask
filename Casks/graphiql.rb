cask 'graphiql' do
  version '0.5.1'
  sha256 '843a13b60e33967a0c5148650a5c674dc2ea13b84c70f7766fb774ec4aa89f11'

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/GraphiQL.app.zip"
  appcast 'https://github.com/skevy/graphiql-app/releases.atom',
          checkpoint: '34e0f858e4227096dcbfb60a2b6917da71440270dfcfc3d4eebd687e9b5181f3'
  name 'GraphiQL App'
  homepage 'https://github.com/skevy/graphiql-app'

  app 'GraphiQL.app'
end
