cask :v1 => 'launchcontrol' do
  version '1.22.1'
  sha256 '73def5fce9833719e9125cf43b64ffd585c83ebabc838874a137de57df50c924'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '4bdd5346150de3ec0e56f0a82f0d82c9bf3efface90aebdd5a3a81f5352afda3'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
