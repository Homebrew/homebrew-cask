cask 'flux' do
  version '37.5'
  sha256 '082c213931a8e9594d34042372aef2f2c1baefecf9474b89fedc3aadf67ba1f8'

  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: 'f2b14fbd27f0d4e43931c5d9826668aac4797fdc494460189aa6de1c7d892cff'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  auto_updates true

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Flux'

  zap delete: '~/Library/Preferences/org.herf.Flux.plist'
end
