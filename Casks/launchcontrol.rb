cask :v1 => 'launchcontrol' do
  version '1.23'
  sha256 '4982a660dc5727465d6a32102cd2ea59435d5072ee9e1a4703f8a4573b164b94'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '4477f0fc0ec7483f5a6594bc220be6801ee4d28702663c17346bfdd4d1f6be0f'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
