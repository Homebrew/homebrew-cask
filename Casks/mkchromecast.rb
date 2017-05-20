cask 'mkchromecast' do
  version '0.3.7'
  sha256 'bba745669d7ff4555aa4895706ac7808eb24c007581cb055bc72591a043198ad'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '5046a770995fba5330b5f89d100750c38f35ab8fee1a8d0012c2ffe83141a7bb'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com/'

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
