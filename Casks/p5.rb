cask 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.5.9'
  sha256 'a5e8b4e577c6a10af4a57819e51a1c7478eb0d8b5f8b67b1a0bfc7c04ae96961'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5-mac.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom',
          checkpoint: 'c991cb2dc7268711191ca1f99570141aeefbaac6f619821d972b328dcbc03530'
  name 'p5.js Editor'
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
