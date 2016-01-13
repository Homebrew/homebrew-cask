cask 'launchcontrol' do
  version '1.25.2'
  sha256 'f58123c7aee8fe8438bbd1c3f977f13f359261afe30f902d799f721989ce33af'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '214288b034ce9debefc3b97f7c0eafcd79671da87a298a0a994af977f9a86b7d'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
