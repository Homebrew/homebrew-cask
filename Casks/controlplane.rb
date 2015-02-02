cask :v1 => 'controlplane' do
  version '1.5.6'
  sha256 '5d6ed527f6a127ab94962458b45d2a4808d79f2be1c56af019ca6102fee8248d'

  url "http://www.controlplaneapp.com/download/#{version}"
  appcast 'http://www.controlplaneapp.com/appcast.xml',
          :sha256 => 'a2fdf304ec2c9ee7fbc7c6a2e9db16473169a97926acbbe65a6c4b891adcbdcd'
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  app 'ControlPlane.app'

  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
