cask 'mkchromecast' do
  version '0.2.7'
  sha256 'b87d4bea32f2b0741129885910ce970fefd74dcea3bcf2e0e8503fcd3dbb9e57'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '86b0d304d684d8e0c57a0453d85491c12e3229f7d994801c038381dac3758e7d'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
