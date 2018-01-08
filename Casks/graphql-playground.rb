cask 'graphql-playground' do
  version '1.3.22'
  sha256 '490dfaf6d2121660073ec1c762757e6777ae88ec2635e65c1f5f1d1f4c99ec22'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: '898abe2cf2f46e394ffe14fec40123aeaeb9e473128dd93b51ed85c84204578c'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
