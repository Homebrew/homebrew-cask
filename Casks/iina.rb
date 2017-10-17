cask 'iina' do
  version '0.0.14'
  sha256 '0b0de3238fde6cef6afd82993eb08ea6fa567c786f6fab67ab3346b2e2c7fc3b'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml',
          checkpoint: '9e3447a8bd8b7e27c9de094e0309fad4fa38eed8e1f41a868d07790b9d01b1f1'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'IINA.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl',
                '~/Library/Caches/com.colliderli.iina',
                '~/Library/Cookies/com.colliderli.iina.binarycookies',
                '~/Library/Logs/DiagnosticReports/IINA*.crash',
                '~/Library/Saved Application State/com.colliderli.iina.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.colliderli.iina',
                '~/Library/Preferences/com.colliderli.iina.plist',
              ]
end
