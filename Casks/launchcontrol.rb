cask :v1 => 'launchcontrol' do
  version '1.22.2'
  sha256 '1a509a11219d6f7ad56fb2a8b3321c877bd1b285fa368ca7e33adaf12afe19bb'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '3df4a93c0dc85807717c9daf7419b8e2440ca2e4c1913167a6c125577c447b21'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
