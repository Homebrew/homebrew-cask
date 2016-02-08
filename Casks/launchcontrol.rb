cask 'launchcontrol' do
  version '1.26'
  sha256 '3a8773ef89110a8fef4b8a5eae78d5ba1c7eaed53f1ad6ea48f2d32f44c8959f'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '498db658a45dba7caecbff61836a59c7eb70cb77ae5ac81ff9b49c68f47023e4'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
