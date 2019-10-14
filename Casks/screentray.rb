cask 'screentray' do
  version '1.6.0'
  sha256 '7806c0d81bf714bbd30753398f55af49ac33b09bb79ac7a0495249dffed38474'

  # github.com/DSnopov/screentray-distribution was verified as official when first introduced to the cask
  url "https://github.com/DSnopov/screentray-distribution/releases/download/v#{version}/ScreenTray-#{version}.dmg"
  appcast 'https://github.com/DSnopov/screentray-distribution/releases.atom'
  name 'ScreenTray'
  homepage 'https://screentray.com/'

  app 'ScreenTray.app'
end
