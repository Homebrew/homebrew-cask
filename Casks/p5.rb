cask 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.6.1'
  sha256 '608d54e6e18aee78b6292fdd56d7968821cb6b5a23567df9f452f9ce7e16231c'

  # github.com/processing/p5.js-editor was verified as official when first introduced to the cask
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5-mac.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom',
          checkpoint: '219df1fa9cba52c93906de9018afc7657c809190a9abda6c0715a7aea28fa099'
  name 'p5.js Editor'
  homepage 'https://p5js.org/download/#editor'

  app 'p5.app'
end
