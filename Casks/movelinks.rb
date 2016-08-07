cask 'movelinks' do
  version '1.4.1'
  sha256 '0968bd721266c35f1b3492dd8014aca9d3e60c8fcb2d0066cc21b581a25e5b80'

  # d1c229iib3zm7m.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink2_#{version.dots_to_underscores}.dmg"
  appcast 'https://d1c229iib3zm7m.cloudfront.net/mac/appcast.xml',
          checkpoint: '529dbb191756744a2304e8693f7044c6310d6d36a9b9b7a0196487fc10b80d4a'
  name 'Movelinks'
  homepage 'https://www.movescount.com/connect/moveslinkmac/Suunto_Ambit'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Moveslink2.app'

  uninstall login_item: 'Movelinks2'
end
