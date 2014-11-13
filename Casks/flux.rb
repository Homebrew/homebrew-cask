cask :v1 => 'flux' do
  version :latest
  sha256 :no_check

  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml'
  homepage 'http://justgetflux.com'
  license :unknown

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/org.herf.Flux.plist'
end
