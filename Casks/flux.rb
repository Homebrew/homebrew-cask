cask 'flux' do
  version '39.94'
  sha256 '45e69b3f02c02e6f442c1e2ce49b70e14f69d5cb7453cad031e61055ffbdb318'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: 'f6127c732fe64848139f952b0ff08dcd4ba97f1a58d6599857d6268ad035b5ec'
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
              ]
end
