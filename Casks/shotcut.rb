cask 'shotcut' do
  version '15.12.02'
  sha256 'bcfc2355debb8082839d79f51c9722b9217f88e513320462b6a2298163b84a17'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(%r{\.\d+$}, '')}/shotcut-osx-x86_64-#{version.delete('.')}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          :sha256 => '7ef5b81d62a781a2ef1b4e9059ad88b693a100ebeb8bf216abfdddbd2caeb5e8'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
