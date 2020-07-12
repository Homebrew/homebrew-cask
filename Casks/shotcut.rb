cask 'shotcut' do
  version '20.07.11'
  sha256 '8b94e22bc54fcb5ee6fb5f1642ecb66ef92b128df6a5b488f2415c41c7a6175f'

  # github.com/mltframework/shotcut/ was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
