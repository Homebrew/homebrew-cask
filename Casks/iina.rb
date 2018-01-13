cask 'iina' do
  version '0.0.15'
  sha256 '5492a131654eaaed1dd5992bde235467c573c994f4c3cd747f96aa7f26b2f33d'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast.xml',
          checkpoint: '29e929c5ada6de73d94d4964f5a82ba73e9061cb98c0cf6a13183caf29eba3f8'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'IINA.app'

  zap trash: [
               '~/Library/Application Support/com.colliderli.iina',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*',
               '~/Library/Caches/com.colliderli.iina',
               '~/Library/Cookies/com.colliderli.iina.binarycookies',
               '~/Library/Logs/DiagnosticReports/IINA*.crash',
               '~/Library/Preferences/com.colliderli.iina.plist',
               '~/Library/Safari/Extensions/Open in IINA.safariextz',
               '~/Library/Saved Application State/com.colliderli.iina.savedState',
             ]
end
