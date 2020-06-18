cask 'microsoft-outlook' do
  version '16.38.20061401'
  sha256 '50bdd2a61bf9e941f6df4a0abb56b4e3c39e63becc81c2e86a323d129d2e5b90'

  # officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/ was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"
  appcast 'https://docs.microsoft.com/en-us/officeupdates/update-history-office-for-mac'
  name 'Microsoft Outlook'
  homepage 'https://products.office.com/en-us/outlook/email-and-calendar-software-microsoft-outlook'

  auto_updates true
  conflicts_with cask: 'microsoft-office'
  depends_on macos: '>= :sierra'

  pkg "Microsoft_Outlook_#{version}_Installer.pkg"

  uninstall pkgutil:   [
                         'com.microsoft.package.Microsoft_Outlook.app',
                         'com.microsoft.pkg.licensing',
                       ],
            launchctl: 'com.microsoft.office.licensingV2.helper',
            quit:      'com.microsoft.autoupdate2'

  zap trash:     [
                   '~/Library/Application Scripts/com.microsoft.Outlook',
                   '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/com.microsoft.autoupdate2',
                   '~/Library/Containers/com.microsoft.Outlook',
                   '~/Library/Preferences/com.microsoft.autoupdate.fba.plist',
                   '~/Library/Preferences/com.microsoft.autoupdate2.plist',
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
