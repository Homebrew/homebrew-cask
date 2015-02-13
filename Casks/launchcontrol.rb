cask :v1 => 'launchcontrol' do
  version '1.18'
  sha256 '9bdb5c086d18a877bca2eec445070bf1fa05f4860b17b5311989236763d4c4a6'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '06662e17da46cf33cf514aeecb8c8fdee0c85a9c864f5f0c93f2bcd077ffeea5'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
