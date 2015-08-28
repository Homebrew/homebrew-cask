cask :v1 => 'flux' do
  version '36'
  sha256 '439b83c1886e8dee2fb79f9abb047cddf0fcd7dae7d6b68308a65e3954d63333'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/org.herf.Flux.plist'
end
