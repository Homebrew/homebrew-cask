cask 'shotcut' do
  version '20.02.17'
  sha256 'ac47f945e0e1ec6fe6b8a9f06e0a1e642e08d7405da50a0a889599bd8b8a9392'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
