cask 'iina' do
  version '1.0.4'
  sha256 'e4e4c6ea67e149a4508beb739a2249e2fc8df99a324f738bdcf75b0d3514ea8e'

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
