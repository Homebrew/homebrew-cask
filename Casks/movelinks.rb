cask 'movelinks' do
  version '1.3.28'
  sha256 '035a4f85443d69c24280031f4887371c6bc541fbfcc540ddc544aa947dcaa871'

  # d1c229iib3zm7m.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink2_#{version.dots_to_underscores}.dmg"
  appcast 'https://d1c229iib3zm7m.cloudfront.net/mac/appcast.xml',
          checkpoint: 'dc4bc56d1a52efb42ca95264d3fdf6967f342126fa9ec12374fa3611e1368f2e'
  name 'Movelinks'
  homepage 'http://www.movescount.com/connect/moveslinkmac/Suunto_Ambit'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Moveslink2.app'

  uninstall login_item: 'Movelinks2'
end
