cask 'movelinks' do
  version '1.4.4'
  sha256 '474ec979b4fb9b6c2319a61162e95ca895eb9949b3f2a72a7365561bcf651a8c'

  # d1c229iib3zm7m.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink2_#{version.dots_to_underscores}.dmg"
  appcast 'https://d1c229iib3zm7m.cloudfront.net/mac/appcast.xml',
          checkpoint: 'c1d5f1b9a7c848fde84a61e12ed6232eb517126ad92be680ba4e37c76f902e14'
  name 'Movelinks'
  homepage 'http://www.movescount.com/connect?os=mac'

  auto_updates true

  app 'Moveslink2.app'

  uninstall login_item: 'Movelinks2'
end
