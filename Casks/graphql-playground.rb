cask 'graphql-playground' do
  version '1.3.7'
  sha256 '59319011c690eb724c57a2b4618068246534977331d2a0bae9eda3643b4edbb1'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/playground-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: 'd88ff50212c417c51a62be4169a28f29324d9ea5a134fe98ac7603599a2f228b'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
