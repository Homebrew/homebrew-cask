cask 'shotcut' do
  version '20.06.28'
  sha256 'f7774b8a4f940dbdd14a4a314ceaf3acaec06a071786c60f6ff451d246b85844'

  # github.com/mltframework/shotcut/ was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
