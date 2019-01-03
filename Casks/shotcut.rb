cask 'shotcut' do
  version '18.12.23'
  sha256 '187e5f6120f1b2d55856cea1d51fcbe62e38fe4397b03db676ce927377f2f750'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
