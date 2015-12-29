cask 'airtool' do
  version '1.2.1'
  sha256 '3bd3677cdf65b20d93e24c10908c5cdf1231f59696baa72af0919cf489a70f9e'

  url 'https://s3.amazonaws.com/airtool/airtool_1.2.1.pkg'
  appcast 'http://www.adriangranados.com/appcasts/airtoolcast.xml',
          :sha256 => 'b8d00edbe68c31a79b2ba4ae74f810619544df39b460dad5570e5f3aaae485f9'
  name 'Airtool'
  homepage 'http://www.adriangranados.com/apps/airtool'
  license :closed

  pkg 'airtool_1.2.1.pkg'

  uninstall :pkgutil => [
                         'com.adriangranados.airtool.airtool-bpf.pkg',
                         'com.adriangranados.airtool.airtool-bpf.plist.pkg',
                         'com.adriangranados.airtool.Airtool.pkg',
                        ]

                        zap :delete => [
                          '/Library/Application Support/Airtool',
                          '/Library/LaunchDaemons/com.adriangranados.airtool.airtool-bpf.plist',
                          '~/Library/Saved Application State/com.freemacsoft.AppCleaner.savedState',
                          '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adriangranados.airtool.sfl',
                        ]
end
