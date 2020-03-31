cask 'boinc' do
  version '7.14.4'
  sha256 '106ddd2985ee332164f24827d4decf7b083c5d531a83b2e93fb03f63899fe0a7'

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  appcast 'https://boinc.berkeley.edu/download.php'
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
