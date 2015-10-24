cask :v1 => 'launchcontrol' do
  version '1.22.3'
  sha256 'a1b492e912840c33d1a8bcca627e1fe4b68d005bf00793448290982f6dacfd9d'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'fe89c8c989dd76c66508807fef93fa9334e8a674cf9085ce2b1537d550d1d3e2'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
