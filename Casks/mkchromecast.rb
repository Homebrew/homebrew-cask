cask 'mkchromecast' do
  version '0.2.3.1'
  sha256 '2f16b83a2a132c9aa49ead8d55553070137fbdf4419799a15f2e33b637c902fa'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'e2d625225881d00fd307f506d6e4b6268dedd70c2245c1e02ca1d798abc14331'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'

  uninstall delete: 'mkchromecast.app'
end
