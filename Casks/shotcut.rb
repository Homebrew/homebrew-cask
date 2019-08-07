cask 'shotcut' do
  version '19.08.05'
  sha256 'd45d9291da60b2e1cb093aa4e4ce3366c946b417d42cefb035104437cc33c4cf'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
