cask 'screentray' do
  version '1.1.0'
  sha256 'c014c85574196fd45550ebe964047d9e385bb405f7631f51814f944aa1a46210'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/DSnopov/screentray-distribution/releases/download/v1.1.0/screen-tray-1.1.0-mac.zip'
  appcast 'https://github.com/DSnopov/screentray-distribution/releases.atom'
  name 'ScreenTray'
  homepage 'https://screentray.com/'

  app 'ScreenTray.app'
end
