cask 'flux' do
  version '39.94'
  sha256 '45e69b3f02c02e6f442c1e2ce49b70e14f69d5cb7453cad031e61055ffbdb318'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '16bee634c8c3ab57414f2aa3afac3afc762e6aad522247dc9d5c9bddd73fbdc7'
  name 'f.lux'
  homepage 'https://justgetflux.com/'

  auto_updates true

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Flux',
            quit:       'org.herf.Flux'

  zap delete: [
                '~/Library/Preferences/org.herf.Flux.plist',
                '~/Library/Caches/org.herf.Flux',
                '~/Library/Cookies/org.herf.Flux.binarycookies',
              ]
end
