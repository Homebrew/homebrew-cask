cask 'graphql-playground' do
  version '1.5.6'
  sha256 'ab1b2a2407d64ef409b1f6d18f90cf021faff60c0086c42414ca2a73aeb715df'

  url "https://github.com/graphcool/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}-mac.zip"
  appcast 'https://github.com/graphcool/graphql-playground/releases.atom',
          checkpoint: 'a54ee411d9ddd05e021debae5831abbb990ada744c049925dfc2eae25aabb974'
  name 'GraphQL Playground'
  homepage 'https://github.com/graphcool/graphql-playground'

  app 'GraphQL Playground.app'
end
