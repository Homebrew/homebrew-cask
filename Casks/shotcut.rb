cask 'shotcut' do
  version '20.04.12'
  sha256 '8a11c1bb20fed5afcb134d77321a2b7dc2693146440b6228c1e3354c9e89413c'

  # github.com/mltframework/shotcut/ was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
