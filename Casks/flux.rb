cask 'flux' do
  version '36-6'
  sha256 '613cdb8deee91dd50f266cecc1f10c859d8ba9aa6b0cf2a25156849eec46bb1a'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '8c96fbbbea24614bde904646ac83ebd852995bab8268c0c0e5297860c7a0f7e5'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Flux'

  zap delete: '~/Library/Preferences/org.herf.Flux.plist'
end
