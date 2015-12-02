cask :v1 => 'launchcontrol' do
  version '1.24.1'
  sha256 '7c8f8f9070fe01cbf9b6ee06939aec938a9f364e82b0c1bd882fa9ea50ddb92e'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'b169efc42ac688c9a6be365da4eb9d0f24595c7bc4239f02721271edbf7b3aa7'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
