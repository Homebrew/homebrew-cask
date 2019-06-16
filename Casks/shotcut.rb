cask 'shotcut' do
  version '19.06.15'
  sha256 'f3cf8b6f0aaad9aa9350aa2706db1dd47dd3daa745773d4f9574b227598e1c9a'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
