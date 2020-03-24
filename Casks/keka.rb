cask 'keka' do
  version '1.1.26'
  sha256 '78842a355218276627866cd0b5ab7c54ba07bb4a2d13d9013589af0cc255eeb7'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'Keka'
  homepage 'https://www.keka.io/'

  auto_updates true
  conflicts_with cask: 'keka-beta'

  app 'Keka.app'

  zap trash: [
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
