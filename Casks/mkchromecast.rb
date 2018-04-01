cask 'mkchromecast' do
  version '0.3.8.1'
  sha256 'f5283c183c38213b87d740deaf3794e65823c12383c43f27560a5afad2b3b178'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '95592248a4c493cce0211ca5524183d9deb3c6699e97ed55f91e1025b7502162'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com/'

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
