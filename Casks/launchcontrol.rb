cask 'launchcontrol' do
  version '1.25.1'
  sha256 '9c02c644c904a9e7f10e075296daa1a0d839c888f2930ecfd49b16acc2d6b708'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '9c13a78b71ade43bc4831128d1ade73c48cc2162efbbd8e4a9fc39c3f603dc10'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
