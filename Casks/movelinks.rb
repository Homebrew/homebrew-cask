cask 'movelinks' do
  version '1.3.27'
  sha256 '8ba8a3f7847914d8ab3f01d87118dd5f88f9e836c5159ef98a3436349d9fc205'

  # d1c229iib3zm7m.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink2_#{version.dots_to_underscores}.dmg"
  appcast 'https://d1c229iib3zm7m.cloudfront.net/mac/appcast.xml',
          checkpoint: '322993293bf498eeb206ead2aae2308cd6ad5d7f62bda511f74749ca9defac91'
  name 'Movelinks'
  homepage 'http://www.movescount.com/connect/moveslinkmac/Suunto_Ambit'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Moveslink2.app'

  uninstall login_item: 'Movelinks2'
end
