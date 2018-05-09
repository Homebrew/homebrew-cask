cask 'iina' do
  version '0.0.15.1'
  sha256 '14ed0c7a301f2b5806c23d0e05e1006a82a23c41da9e3a0662f042bd39f15529'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml',
          checkpoint: 'a0a7899d02031ac20a2a27516c5b33273098ac9abc9c245f8dac3be313f83e14'
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
