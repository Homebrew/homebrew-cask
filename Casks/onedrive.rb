cask 'onedrive' do
  version '18.151.0729.0006'
  sha256 '094021cd8bfdff041737b93fb13bb35be66b823c88419f740e475d1a6711e516'

  # oneclient.sfx.ms/Mac/Direct was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Direct/#{version}/OneDrive.pkg"
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  auto_updates true

  pkg 'OneDrive.pkg'

  uninstall delete:    '/Applications/OneDrive.app',
            launchctl: 'com.microsoft.OneDriveUpdaterDaemon',
            pkgutil:   'com.microsoft.OneDrive',
            quit:      [
                         'com.microsoft.OneDrive',
                         'com.microsoft.OneDriveUpdater',
                         'com.microsoft.OneDrive.FinderSync',
                       ]

  zap trash: [
               '~/Library/Application Support/OneDrive',
               '~/Library/Application Support/com.microsoft.OneDrive',
               '~/Library/Application Support/com.microsoft.OneDriveUpdater',
               '~/Library/Application Support/OneDriveUpdater',
               '~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync',
               '~/Library/Application Scripts/com.microsoft.OneDriveLauncher',
               '~/Library/Caches/com.microsoft.OneDrive',
               '~/Library/Caches/com.microsoft.OneDriveUpdater',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDrive',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveUpdater',
               '~/Library/Containers/com.microsoft.OneDriveLauncher',
               '~/Library/Containers/com.microsoft.OneDrive.FinderSync',
               '~/Library/Cookies/com.microsoft.OneDrive.binarycookies',
               '~/Library/Cookies/com.microsoft.OneDriveUpdater.binarycookies',
               '~/Library/Group Containers/*.OneDriveStandaloneSuite',
               '~/Library/Logs/OneDrive',
               '~/Library/Preferences/com.microsoft.OneDrive.plist',
               '~/Library/Preferences/com.microsoft.OneDriveUpdater.plist',
               '~/Library/Preferences/*.OneDriveStandaloneSuite.plist',
             ]
end
