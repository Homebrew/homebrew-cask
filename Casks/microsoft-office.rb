cask 'microsoft-office' do
  version '16.11.18031100'
  sha256 'f566c9ffe48d8a6bb72614ccb3ff91add5d57ff339274ce77e42c30148f57dfe'

  # officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/ was verified as official when first introduced to the cask
  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_2016_#{version}_Installer.pkg"
  name 'Microsoft Office 2016'
  homepage 'https://products.office.com/mac/microsoft-office-for-mac/'

  auto_updates true

  pkg "Microsoft_Office_2016_#{version}_Installer.pkg"

  uninstall pkgutil:   [
                         'com.microsoft.package.Fonts',
                         'com.microsoft.package.Frameworks',
                         'com.microsoft.package.Microsoft_Excel.app',
                         'com.microsoft.package.Microsoft_OneNote.app',
                         'com.microsoft.package.Microsoft_Outlook.app',
                         'com.microsoft.package.Microsoft_PowerPoint.app',
                         'com.microsoft.package.Microsoft_Word.app',
                         'com.microsoft.package.Proofing_Tools',
                         'com.microsoft.pkg.licensing',
                       ],
            launchctl: [
                         'com.microsoft.office.licensing.helper',
                         'com.microsoft.office.licensingV2.helper',
                       ],
            delete:    [
                         '/Applications/Microsoft Excel.app',
                         '/Applications/Microsoft OneNote.app',
                         '/Applications/Microsoft Outlook.app',
                         '/Applications/Microsoft PowerPoint.app',
                         '/Applications/Microsoft Word.app',
                       ]

  zap trash:     [
                   '~/Library/Application Scripts/com.microsoft.Excel',
                   '~/Library/Application Scripts/com.microsoft.Office365ServiceV2',
                   '~/Library/Application Scripts/com.microsoft.Outlook',
                   '~/Library/Application Scripts/com.microsoft.Powerpoint',
                   '~/Library/Application Scripts/com.microsoft.Word',
                   '~/Library/Application Scripts/com.microsoft.errorreporting',
                   '~/Library/Application Scripts/com.microsoft.onenote.mac',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.excel.sfl*',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.word.sfl*',
                   '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2',
                   '~/Library/Caches/com.microsoft.autoupdate.fba',
                   '~/Library/Caches/com.microsoft.autoupdate2',
                   '~/Library/Containers/com.microsoft.Excel',
                   '~/Library/Containers/com.microsoft.Office365ServiceV2',
                   '~/Library/Containers/com.microsoft.Outlook',
                   '~/Library/Containers/com.microsoft.Powerpoint',
                   '~/Library/Containers/com.microsoft.Word',
                   '~/Library/Containers/com.microsoft.errorreporting',
                   '~/Library/Containers/com.microsoft.onenote.mac',
                   '~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies',
                   '~/Library/Cookies/com.microsoft.autoupdate2.binarycookies',
                   '~/Library/Group Containers/UBF8T346G9.Office',
                   '~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost',
                   '~/Library/Group Containers/UBF8T346G9.ms',
                   '~/Library/Preferences/com.microsoft.Excel.plist',
                   '~/Library/Preferences/com.microsoft.Powerpoint.plist',
                   '~/Library/Preferences/com.microsoft.Word.plist',
                   '~/Library/Preferences/com.microsoft.autoupdate.fba.plist',
                   '~/Library/Preferences/com.microsoft.autoupdate2.plist',
                   '~/Library/Saved Application State/com.microsoft.autoupdate2.savedState',
                   '~/Library/Saved Application State/com.microsoft.office.setupassistant.savedState',
                 ],
      rmdir:     [
                   '~/Library/Caches/Microsoft/uls',
                   '~/Library/Caches/Microsoft',
                 ],
      launchctl: [
                   'com.microsoft.autoupdate.helpertool',
                   'com.microsoft.autoupdate.helper',
                 ],
      pkgutil:   'com.microsoft.package.Microsoft_AutoUpdate.app'
end
