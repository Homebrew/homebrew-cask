cask 'onedrive' do
  version '17.3.6798.0207'
  sha256 'ead6017d367f9d15990cdccfe617adc8750d7302adfeadada353e267362c6c92'

  # oneclient.sfx.ms was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Prod/#{version}/OneDrive.pkg"
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  pkg 'OneDrive.pkg'

  uninstall pkgutil: 'com.microsoft.OneDrive',
            quit:    [
                       'com.microsoft.OneDrive',
                       'com.microsoft.OneDrive.FinderSync',
                     ],
            delete:  '/Library/LaunchDaemons/com.microsoft.OneDriveUpdaterDaemon.plist'

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
