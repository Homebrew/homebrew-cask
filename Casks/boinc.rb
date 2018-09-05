cask 'boinc' do
  version '7.12.0'
  sha256 'f4cd24ce641792b7735551fbe654ff181b59677c8a2fc675eaba9b8db866e0b5'

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  name 'Berkeley Open Infrastructure for Network Computing'
  name 'BOINC'
  homepage 'https://boinc.berkeley.edu/'

  pkg "boinc_#{version}_macOSX_x86_64/BOINC Installer.app/Contents/Resources/BOINC.pkg"

  uninstall pkgutil: 'edu.berkeley.boinc'

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
