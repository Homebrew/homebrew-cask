cask :v1 => 'launchcontrol' do
  version '1.22'
  sha256 'a1a62be909078b0c242a2cf133b6a014eef8a0ffeb014675d84bdb590ca17b50'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'bc4005b1b759db69fa1d37f93982cc6179de71e87ce2ded11d7de0b141159952'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
