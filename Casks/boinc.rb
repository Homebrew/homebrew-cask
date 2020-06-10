cask 'boinc' do
  version '7.16.6'
  sha256 '35e853ae2f637a109112a05256d038d543374da8a9b77997f37f2fb2f9cca277'

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  appcast 'https://boinc.berkeley.edu/wiki/Release_Notes',
          configuration: version.major_minor
  name 'Berkeley Open Infrastructure for Network Computing'
  name 'BOINC'
  homepage 'https://boinc.berkeley.edu/'

  pkg "boinc_#{version}_macOSX_x86_64/BOINC Installer.app/Contents/Resources/BOINC.pkg"

  uninstall pkgutil:   'edu.berkeley.boinc',
            launchctl: 'edu.berkeley.boinc-sshelper'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.*.sfl*',
               '~/Library/Application Support/BOINC',
               '~/Library/Caches/edu.berkeley.boinc',
               '~/Library/Preferences/BOINC Manager Preferences',
               '~/Library/Preferences/edu.berkeley.boinc.plist',
               '/Library/Screen Savers/BOINCSaver.saver',
             ]
end
