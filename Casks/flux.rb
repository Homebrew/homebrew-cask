cask 'flux' do
  version '37.5'
  sha256 '082c213931a8e9594d34042372aef2f2c1baefecf9474b89fedc3aadf67ba1f8'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: 'a83636ef44a20631d8a58ed06cbd8078b8349a15339bbe20dfd7d719a918bf89'
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
