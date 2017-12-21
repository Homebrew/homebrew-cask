cask 'graphql-playground' do
  version '1.3.10'
  sha256 '46b0ce4ecad80b33ba9b651605874ae56efc273395b38cc1fb687a2d8cfef095'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/playground-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: 'd11c2858f808c0f84fcc0be20b3177e057187e17772cb123eb3fbb615fade47c'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
