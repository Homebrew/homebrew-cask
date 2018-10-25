cask 'kerio-connect' do
  version '9.2.7-4117,p2'
  sha256 'a771933ead0810f5b195c3a77a94b0e41c6beb81cc2cf3002e90e73186575da5'

  # cdn.kerio.com was verified as official when first introduced to the cask
  url "https://cdn.kerio.com/dwn/connect/connect-#{version.before_comma}/kerio-connect-#{version.before_comma}-#{version.after_comma}-mac.dmg"
  name 'Kerio Connect'
  homepage 'https://www.kerio.de/products/kerio-connect'

  pkg 'Kerio Connect Installer.pkg'

  uninstall early_script: {
                            executable:   '/bin/launchctl',
                            args:         ['unload', '-w', '/Library/LaunchDaemons/com.kerio.mailserver.plist'],
                            must_succeed: false,
                            sudo:         true,
                          },
            pkgutil:      [
                            'com.kerio.connect.server.pkg',
                            'com.kerio.connect.server.installer.pkg',
                          ],
            launchctl:    'KerioConnect'
end
