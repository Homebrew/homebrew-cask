cask 'shotcut' do
  version '18.06.02'
  sha256 '950c8b9ed8ad56718ca2be31bc8dd2fd6a35b9d3eb7b95ee88661fc6e7b19fbf'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-macos-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
