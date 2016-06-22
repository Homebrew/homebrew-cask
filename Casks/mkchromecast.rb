cask 'mkchromecast' do
  version '0.2.8'
  sha256 'b7a2e1689b902e8307e4f97b205663849b5a0c23cecc30806c8731d6d841258c'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'd7dc10271d3e7e7c25830ca612ac2ec3c346d8821369909f2995d248d23024db'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
