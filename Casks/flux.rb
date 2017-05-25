cask 'flux' do
  version '39.96'
  sha256 '8514ba63c69e74d9c1973a757e901e4622cfefb2e46b66d726bfcf4bd1322d7f'

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
