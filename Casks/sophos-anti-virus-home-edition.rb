cask :v1 => 'sophos-anti-virus-home-edition' do
  version :latest
  sha256 :no_check

  url 'https://downloads.sophos.com/home-edition/savosx_he_r.zip'
  name 'Sophos Anti-Virus Home Edition'
  homepage 'https://www.sophos.com/en-us/products/free-tools/sophos-antivirus-for-mac-home-edition.aspx/'
  license :gratis
  tags :vendor => 'Sophos'

  installer :script => 'Sophos Anti-Virus Home Edition.app/Contents/MacOS/tools/InstallationDeployer', :args => %w[--install]

  uninstall :script => {
                        :executable => 'Sophos Anti-Virus Home Edition.app/Contents/MacOS/tools/InstallationDeployer',
                        :args => %w[--remove]
                       },
            :launchctl => [
                           'com.sophos.common.servicemanager',
                           'com.sophos.uiserver',
                          ],
            :kext => [
                      'com.sophos.kext.sav',
                      'com.sophos.nke.swi',
                     ],
            :quit => 'com.sophos.ui',
            :delete => [
                        '/Applications/Remove Sophos Anti-Virus.app',
                        '/Applications/Sophos Anti-Virus.app',
                        '/Library/Extensions/SophosNetworkInterceptor.kext',
                        '/Library/Extensions/SophosOnAccessInterceptor.kext',
                        '/Library/Frameworks/SAVI.framework',
                        '/Library/Frameworks/SUMScanKit.framework',
                        '/Library/Frameworks/SophosGenericsCommon.framework',
                        '/Library/Frameworks/SophosGenericsCore.framework',
                        '/Library/LaunchAgents/com.sophos.uiserver.plist',
                        '/Library/Sophos Anti-Virus',
                        '/usr/bin/sweep',
                        '/usr/share/man/man1/sweep.1',
                       ]

  zap :delete => [
                  '/Library/Application Support/Sophos',
                  '/Library/Preferences/com.sophos.ac.plist',
                  '/Library/Preferences/com.sophos.dc.plist',
                  '/Library/Preferences/com.sophos.mcs.plist',
                  '/Library/Preferences/com.sophos.sau.plist',
                  '/Library/Preferences/com.sophos.sav.plist',
                  '/Library/Preferences/com.sophos.swc.plist',
                 ]
end
