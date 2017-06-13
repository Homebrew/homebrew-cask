cask 'launchcontrol' do
  version '1.32'
  sha256 '1375cd061e2c38531c7851e31471d46f8ecc3617cc5011dfedfdcbd40c69ba57'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '1fd999fc5135dfe9037c94454ec590284d4c81df86f5092c50642443a9f41a15'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'

  zap delete: [
                '/Library/LaunchDaemons/com.soma-zone.LaunchControl.Helper.plist',
                '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
                '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help',
                '~/Library/Preferences/com.soma-zone.LaunchControl.plist',
              ]
end
