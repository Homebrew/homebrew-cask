cask 'boinc' do
  version '7.6.33'
  sha256 '9ac51c916ffce4ba4822d0b8f304018a4c96b5580cf48249a864053d1e166871'

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
              ]
end
