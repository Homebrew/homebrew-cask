cask 'boinc' do
  version '7.6.34'
  sha256 '8f3c66019930dc2bf76ea6feda2741559f783b69321d698bce689fc6ec64f648'

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  name 'Berkeley Open Infrastructure for Network Computing'
  name 'BOINC'
  homepage 'https://boinc.berkeley.edu/'

  pkg "boinc_#{version}_macOSX_x86_64/BOINC Installer.app/Contents/Resources/BOINC.pkg"

  uninstall pkgutil: 'edu.berkeley.boinc'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.*.sfl',
                '~/Library/Application Support/BOINC',
                '~/Library/Caches/edu.berkeley.boinc',
                '~/Library/Preferences/BOINC Manager Preferences',
                '~/Library/Preferences/edu.berkeley.boinc.plist',
                '/Library/Screen Savers/BOINCSaver.saver',
              ]
end
