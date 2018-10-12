cask 'shotcut' do
  version '18.10.08'
  sha256 '2d498db8071e7d0d98fc240e2a97f75eadf28c3039d07e30aa8d0d05052aeff5'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
