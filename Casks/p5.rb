cask 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.6.2'
  sha256 'd6688ad97708604b082332355aacdd24a2be28c14cc26ef452716be7d34fe255'

  # github.com/processing/p5.js-editor was verified as official when first introduced to the cask
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5-mac.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom',
          checkpoint: 'be59b9f02d63c2c3ad02c6736566605dc0931d26d6d814c9187ed0f6f2c1bcf9'
  name 'p5.js Editor'
  homepage 'https://p5js.org/download/#editor'

  app 'p5.app'
end
