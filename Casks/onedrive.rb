cask 'onedrive' do
  version '17.3.6919.0626'
  sha256 '7c4854c6ad7e33fe0d1a8727e6c48313de3e1d071ec2a2108d977f79cae08a80'

  # oneclient.sfx.ms was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Direct/#{version}/OneDrive.pkg"
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  pkg 'OneDrive.pkg'

  uninstall quit:    [
                       'com.microsoft.OneDrive',
                       'com.microsoft.OneDrive.FinderSync',
                     ],
            pkgutil: 'com.microsoft.OneDrive',
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
