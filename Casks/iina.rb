cask 'iina' do
  version '1.0.5'
  sha256 '04958c157ee3e71ae822e2ea471f6277b8f2b9b12bb3cc46fd769d9a4f30a05b'

  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml'
  name 'IINA'
  homepage 'https://iina.io/'

  auto_updates true
  conflicts_with cask: 'iina-nightly'
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
