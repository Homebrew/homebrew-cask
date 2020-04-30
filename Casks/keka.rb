cask 'keka' do
  version '1.1.27'
  sha256 'fa3a5fba127a265544d4e017faa62d4529eb1f1110723e32508e038d25964b50'

  # github.com/aonez/Keka/ was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'Keka'
  homepage 'https://www.keka.io/'

  auto_updates true
  conflicts_with cask: 'keka-beta'

  app 'Keka.app'

  zap trash: [
               '~/Library/Containers/com.aone.keka',
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
