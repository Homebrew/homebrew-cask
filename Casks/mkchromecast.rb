cask 'mkchromecast' do
  version '0.3.0'
  sha256 '5b9be6891471d7eeefeea1001a1f89b5d8d4103cd29c6aabba34ed1ca8973f15'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '78e68174ea99b8c1bb2508fd9cdc0e611bb742d92b9927ed90b0b0ab2c6667c1'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
