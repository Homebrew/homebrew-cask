cask 'flux' do
  version '37.7'
  sha256 'c4fe43b47c5adc0b066a78a60e99a5dc91466610d9a3660a85104f9fe32a1150'

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

  uninstall login_item: 'Flux'

  zap delete: [
                '~/Library/Preferences/org.herf.Flux.plist',
                '~/Library/Caches/org.herf.Flux',
              ]
end
