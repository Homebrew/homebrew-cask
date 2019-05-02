cask 'shotcut' do
  version '19.04.30'
  sha256 'afaf75f6ca0a330485e37e8b74f0307eff27dbdd79085f8af72a23e8b2905dc0'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
