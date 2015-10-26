cask :v1 => 'launchcontrol' do
  version '1.22.4'
  sha256 'af1b14cb6cda9560b899092022da4db45e0abb979dc96cfccb50c8b7409889ef'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '3423ca50c2c6af423d2daccd462d2b864ce81fa2bc0f6d20e228cf5ad683c46c'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
