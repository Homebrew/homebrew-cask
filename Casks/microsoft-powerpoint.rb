cask 'microsoft-powerpoint' do
  version '16.39.20071300'
  sha256 'f714596c1399e2148bcdbc567db640c4b3717482463ac3d68fc13f2917e7327d'

  # officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/ was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_PowerPoint_#{version}_Installer.pkg"
  appcast 'https://docs.microsoft.com/en-us/officeupdates/update-history-office-for-mac'
  name 'Microsoft PowerPoint'
  homepage 'https://products.office.com/en-US/powerpoint'

  auto_updates true
  conflicts_with cask: 'microsoft-office'
  depends_on macos: '>= :sierra'

  pkg "Microsoft_PowerPoint_#{version}_Installer.pkg"

  uninstall pkgutil:   [
                         'com.microsoft.package.Microsoft_PowerPoint.app',
                         'com.microsoft.pkg.licensing',
                       ],
            launchctl: 'com.microsoft.office.licensingV2.helper',
            quit:      'com.microsoft.autoupdate2'

  zap trash:     [
                   '~/Library/Application Scripts/com.microsoft.Powerpoint',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*',
                   '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2',
                   '~/Library/Caches/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/com.microsoft.autoupdate2',
                   '~/Library/Containers/com.microsoft.Powerpoint',
                   '~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies',
                   '~/Library/Cookies/com.microsoft.autoupdate2.binarycookies',
                   '~/Library/Preferences/com.microsoft.Powerpoint.plist',
                   '~/Library/Preferences/com.microsoft.autoupdate.fba.plist',
                   '~/Library/Preferences/com.microsoft.autoupdate2.plist',
                   '~/Library/Saved Application State/com.microsoft.autoupdate2.savedState',
                 ],
      rmdir:     [
                   '~/Library/Caches/Microsoft/uls',
                   '~/Library/Caches/Microsoft',
                 ],
      launchctl: [
                   'com.microsoft.autoupdate.helpertool',
                   'com.microsoft.autoupdate.helper',
                   'com.microsoft.update.agent',
                 ],
      pkgutil:   'com.microsoft.package.Microsoft_AutoUpdate.app'
end
