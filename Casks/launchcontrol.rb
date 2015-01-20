cask :v1 => 'launchcontrol' do
  version '1.17'
  sha256 '8d8dad29b4ac0f43d2ccb16abf77abde19cba41b084b16403cc9c1841d68c32f'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '06662e17da46cf33cf514aeecb8c8fdee0c85a9c864f5f0c93f2bcd077ffeea5'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
