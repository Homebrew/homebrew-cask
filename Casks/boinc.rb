cask 'boinc' do
  version '7.16.3'
  sha256 '72cad84c0daa854d0c4ca8ddfa5b772cfaf0d15ef3e38a2e982ba6e53e1a3b28'

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  appcast 'https://boinc.berkeley.edu/dl/?C=M;O=D'
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
