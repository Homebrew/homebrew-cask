cask 'iina' do
  version '1.0.2'
  sha256 '37b1150073724f588487b6f61649ab73a34dd143dd5730d70d6ee64aa660056a'

  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml'
  name 'IINA'
  homepage 'https://iina.io/'

  auto_updates true
  conflicts_with cask: 'iina-beta'
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
