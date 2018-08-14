cask 'keka' do
  version '1.1.2'
  sha256 '1405c4574149e0962fa89420c2ad6547cc1b73e43abdf9e127e03ea7d492b807'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'Keka'
  homepage 'http://www.kekaosx.com/'

  auto_updates true
  conflicts_with cask: 'keka-beta'
  depends_on macos: '>= :mavericks'

  app 'Keka.app'

  zap trash: [
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
