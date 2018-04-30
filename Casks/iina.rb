cask 'iina' do
  version '0.0.15.1'
  sha256 '5311c6ae8f00052720226c5e9ab8e3b3d6ab5e055e90b0fa606f4be5cc5358ff'

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
