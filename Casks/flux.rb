cask 'flux' do
  version '39.98'
  sha256 '4b041705c40a593dbf745b83f49254c5a4f46b7e3bedcf150194e3f0840dd525'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '16bee634c8c3ab57414f2aa3afac3afc762e6aad522247dc9d5c9bddd73fbdc7'
  name 'f.lux'
  homepage 'https://justgetflux.com/'

  auto_updates true

  app 'Flux.app'

  uninstall login_item: 'Flux',
            quit:       'org.herf.Flux'

  zap delete: [
                '~/Library/Preferences/org.herf.Flux.plist',
                '~/Library/Caches/org.herf.Flux',
                '~/Library/Cookies/org.herf.Flux.binarycookies',
                '~/Library/Application Support/Flux',
                '~/Library/Containers/com.justgetflux.flux',
              ]
end
