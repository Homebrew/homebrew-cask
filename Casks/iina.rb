cask 'iina' do
  version '1.0.7'
  sha256 '1b1938b3a9640b4c26960aefab1ebe077bfaaf4b7a62ccfce5a7e138c9c56d75'

  url "https://dl.iina.io/IINA.v#{version}.dmg"
  appcast 'https://iina.io/appcast.xml'
  name 'IINA'
  homepage 'https://iina.io/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'IINA.app'
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: 'iina'

  zap trash: [
               '~/Library/Application Scripts/com.colliderli.iina.OpenInIINA',
               '~/Library/Application Support/com.colliderli.iina',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*',
               '~/Library/Application Support/CrashReporter/IINA*.plist',
               '~/Library/Caches/com.colliderli.iina',
               '~/Library/Containers/com.colliderli.iina.OpenInIINA',
               '~/Library/Cookies/com.colliderli.iina.binarycookies',
               '~/Library/Logs/com.colliderli.iina',
               '~/Library/Logs/DiagnosticReports/IINA*.crash',
               '~/Library/Preferences/com.colliderli.iina.plist',
               '~/Library/Safari/Extensions/Open in IINA*.safariextz',
               '~/Library/Saved Application State/com.colliderli.iina.savedState',
             ]
end
