cask 'boinc' do
  version '7.10.2'
  sha256 '6e4768e094dac585996f5ae0cd715cc7a292d9db55191f2932999a54818417b0'

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
