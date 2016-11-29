cask 'launchcontrol' do
  version '1.28.2'
  sha256 '5ad184e2b91690093afb8dadd7663a60d4b32f4c628f2b5874811c1caaa6e580'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '48f8c0a98e698b53fc185a4a78c2e4d0489aaff0ba5e68ecd889e341b9319bcd'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'
end
