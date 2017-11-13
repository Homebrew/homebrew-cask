cask 'iina' do
  version '0.0.14.1'
  sha256 '87d04d497e8a4cad7129877e41244248e795593dfbd0a1c8cee086142993c0f1'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml',
          checkpoint: 'ddde026fa887ead81e1bd4b78e2dfd12abac7cd1f2c6155ee775ea38fc6b31a3'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'IINA.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*',
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
