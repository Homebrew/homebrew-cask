cask :v1 => 'launchcontrol' do
  version '1.19'
  sha256 '06981e93facab2b5d30cf9f1dfaa147c954359af8750c40b25771d57a4c0d1af'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '06662e17da46cf33cf514aeecb8c8fdee0c85a9c864f5f0c93f2bcd077ffeea5'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
