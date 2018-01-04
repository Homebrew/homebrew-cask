cask 'graphql-playground' do
  version '1.3.20'
  sha256 'e237210a5a619bf058b38ac844b56287ebe0a717d14a0b931fb2be92beaa7411'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: '04cdc070876aa86f3bd4be668b2ecb6065949f478f8288ef781cade95d95de88'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
