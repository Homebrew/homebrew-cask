cask :v1 => 'launchcontrol' do
  version '1.22.2'
  sha256 '1a509a11219d6f7ad56fb2a8b3321c877bd1b285fa368ca7e33adaf12afe19bb'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '4bdd5346150de3ec0e56f0a82f0d82c9bf3efface90aebdd5a3a81f5352afda3'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
