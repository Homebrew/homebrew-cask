cask 'mkchromecast' do
  version '0.3.2'
  sha256 'fbf0af3b63bda6fb836cecdb648be01c5a229872db570fa96d003332191037f6'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'b80a52475c5623039d07850c7dfc40cce175ab87debf5a3f1d61cfb35db835ea'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
