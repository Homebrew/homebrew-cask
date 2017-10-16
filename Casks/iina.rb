cask 'iina' do
  version '0.0.13'
  sha256 '7f7886555227fff45b05d3a48ff31c4e70a1c778695f829e747ad4af35342668'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml',
          checkpoint: '6bef26714f93f4983d171ebf337f40f383bc3f7ceb8d25490f4a4c77d506a8c2'
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
