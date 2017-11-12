cask 'boinc' do
  version '7.8.3'
  sha256 '726e328058a1514f37344c264c2d0f2e1e433cf3ed73afbca0aa1acc76156502'

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  name 'Berkeley Open Infrastructure for Network Computing'
  name 'BOINC'
  homepage 'https://boinc.berkeley.edu/'

  pkg "boinc_#{version}_macOSX_x86_64/BOINC Installer.app/Contents/Resources/BOINC.pkg"

  uninstall pkgutil: 'edu.berkeley.boinc'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.sfl*',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.*.sfl*',
                '~/Library/Application Support/BOINC',
                '~/Library/Caches/edu.berkeley.boinc',
                '~/Library/Preferences/BOINC Manager Preferences',
                '~/Library/Preferences/edu.berkeley.boinc.plist',
                '/Library/Screen Savers/BOINCSaver.saver',
              ]
end
