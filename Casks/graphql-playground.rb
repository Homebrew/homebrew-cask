cask 'graphql-playground' do
  version '1.5.2'
  sha256 '7307364cfd8221fe7e7b91f146447bbbbbbe079f8a357c8aedd351dbee23cbfd'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: '37aed50da2a0bedc710ec03a4a4dbedc4586b7cbad6dc74fdad6cd41bbfe2c9d'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
