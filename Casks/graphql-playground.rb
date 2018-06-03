cask 'graphql-playground' do
  version '1.6.0'
  sha256 '121e7015fc076b4029d3ecc37e4ff65afb32f689f3f6cfd4ed8f4d86b084ec39'

  url "https://github.com/prismagraphql/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast 'https://github.com/prismagraphql/graphql-playground/releases.atom',
          checkpoint: '96df374cbf19b00a1b2e8b25a89034e3f161f23b341f0e71fd75b080a1bbfb85'
  name 'GraphQL Playground'
  homepage 'https://github.com/prismagraphql/graphql-playground'

  app 'GraphQL Playground.app'
end
