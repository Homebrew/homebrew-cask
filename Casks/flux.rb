cask 'flux' do
  version '39.97'
  sha256 'de1add26c8d20925e728b5f9e0266855bc89a8128277131273aa66850f79869e'

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
