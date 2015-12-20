cask 'shotcut' do
  version '15.12.02'
  sha256 'bcfc2355debb8082839d79f51c9722b9217f88e513320462b6a2298163b84a17'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.delete('.')}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
