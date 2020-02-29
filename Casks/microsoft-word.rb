cask 'microsoft-word' do
  version '16.34.20020900'
  sha256 '35feec393e1995b6696ce99fdbaa64f3c5855d3a2a1dde7fec2113cbfbb34356'

  # officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Word_#{version}_Installer.pkg"
  appcast 'https://docs.microsoft.com/en-us/officeupdates/update-history-office-for-mac'
  name 'Microsoft Word'
  homepage 'https://products.office.com/en-US/word'

  auto_updates true
  conflicts_with cask: 'microsoft-office'
  depends_on macos: '>= :sierra'

  pkg "Microsoft_Word_#{version}_Installer.pkg"

  uninstall pkgutil:   [
                         'com.microsoft.package.Microsoft_Word.app',
                         'com.microsoft.pkg.licensing',
                       ],
            launchctl: 'com.microsoft.office.licensingV2.helper'

  zap trash:     [
                   '~/Library/Application Scripts/com.microsoft.Word',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.word.sfl*',
                   '~/Library/Application Support/CrashReporter/Microsoft Word_*.plist',
                   '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2',
                   '~/Library/Caches/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/com.microsoft.autoupdate2',
                   '~/Library/Containers/com.microsoft.Word',
                   '~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies',
                   '~/Library/Cookies/com.microsoft.autoupdate2.binarycookies',
                   '~/Library/Preferences/com.microsoft.Word.plist',
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
