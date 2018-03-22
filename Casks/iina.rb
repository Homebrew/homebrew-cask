cask 'iina' do
  version '1.0.0-beta1'
  sha256 '36c96dbaccf0a2575fef30c3e022ad6b4f1abed613adc6a0c682de9169bc7d2e'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml',
          checkpoint: '369904f1c892883ae33a7ac6c33eb09b3517bc2651a66edfc1e409554ac64980'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  auto_updates true
  conflicts_with cask: 'iina-beta'
  depends_on macos: '>= :yosemite'

  app 'IINA.app'
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: 'iina'

  zap trash: [
               '~/Library/Application Support/com.colliderli.iina',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*',
               '~/Library/Caches/com.colliderli.iina',
               '~/Library/Cookies/com.colliderli.iina.binarycookies',
               '~/Library/Logs/DiagnosticReports/IINA*.crash',
               '~/Library/Preferences/com.colliderli.iina.plist',
               '~/Library/Safari/Extensions/Open in IINA*.safariextz',
               '~/Library/Saved Application State/com.colliderli.iina.savedState',
             ]
end
