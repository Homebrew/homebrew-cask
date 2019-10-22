cask 'shotcut' do
  version '19.10.20'
  sha256 '7601bc7405767e03a5c61a2c630e2c0465e982e80ea8e22c5326197f3b845cdf'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
