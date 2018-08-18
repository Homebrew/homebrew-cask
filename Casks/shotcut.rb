cask 'shotcut' do
  version '18.08.14'
  sha256 '9903adda54e00c845df9fccc8ad20dc2965c6fd1f09ecca9be75ddc3a448135a'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
