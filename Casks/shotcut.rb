cask 'shotcut' do
  version '19.07.15'
  sha256 'cd335f4ae15f2b3e5f0a69986bcc6dd7b3981bcb17ef61fbda799e7df9fdd475'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
