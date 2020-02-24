cask 'shotcut' do
  version '20.02.17'
  sha256 'b427c2e3a3273b649a9beb79d3c2914b6c09f5cea3b70948848f5f3d459aa9d5'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
