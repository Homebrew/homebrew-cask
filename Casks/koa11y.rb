cask 'koa11y' do
  version '2.0.0'
  sha256 '2225730263c538d58c4deb4b08704c3f60a534e227fd7740c088b37b3233dc27'

  # github.com/open-indy/Koa11y was verified as official when first introduced to the cask
  url "https://github.com/open-indy/Koa11y/releases/download/v#{version}/OSX_Koa11y_#{version}.zip"
  appcast 'https://github.com/open-indy/Koa11y/releases.atom',
          checkpoint: '63edcb8ec43963f6f0dc6166bd002aa535d5b0a66991d8fd1a5c4928d6464f06'
  name 'Koa11y'
  homepage 'https://open-indy.github.io/Koa11y/'

  app 'Koa11y.app'
end
