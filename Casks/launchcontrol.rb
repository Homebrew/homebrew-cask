cask :v1 => 'launchcontrol' do
  version '1.21'
  sha256 'fba3553f58abc5af121eb53868bdeac2ffb2d4df0d253a69ef7e5f70e476a060'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '19eb4db9db87a0ecfc852a34d4506ec7698eef58b5bc3d956bb37bd0e46222ac'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
