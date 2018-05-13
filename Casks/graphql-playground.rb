cask 'graphql-playground' do
  version '1.5.8'
  sha256 'fc98d3e0e44adceb935cc4b02041cb71601f926310abeff64d3171aabe0305b5'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: '8b6f1145d3ff0aecad8adfc867424514d14c39194f96882ce2ab9a027f3a3143'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
