cask 'onedrive' do
  version '17.3.6916.0606'
  sha256 'f46f523e682adcd375c1dd0b97d260f9326caa822d3206a95e77cf01d865416c'

  # oneclient.sfx.ms was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Prod/#{version}/OneDrive.zip"
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  app 'OneDrive.app'

  uninstall quit:   [
                      'com.microsoft.OneDrive',
                      'com.microsoft.OneDrive.FinderSync',
                    ],
            delete: '/Library/LaunchDaemons/com.microsoft.OneDriveUpdaterDaemon.plist'

  zap delete: [
                '~/Library/Caches/com.microsoft.OneDrive',
                '~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync',
                '~/Library/Application Scripts/com.microsoft.OneDriveLauncher',
                '~/Library/Application Support/OneDrive',
                '~/Library/Application Support/com.microsoft.OneDrive',
                '~/Library/Caches/com.microsoft.OneDrive',
                '~/Library/Containers/com.microsoft.OneDrive.FinderSync',
                '~/Library/Containers/com.microsoft.OneDriveLauncher',
                '~/Library/Cookies/com.microsoft.OneDrive.binarycookies',
                '~/Library/Group Containers/*.OneDriveStandaloneSuite',
                '~/Library/Logs/OneDrive',
                '~/Library/Preferences/com.microsoft.OneDrive.plist',
                '~/Library/Preferences/com.microsoft.OneDriveUpdater.plist',
              ]
end
