cask 'cheatsheet' do
  version '1.2.8'
  sha256 'fa33612d16a36f3817f2388c65539254c6e77f7f3e546f05ff97eeae534166f2'

  # mediaatelier.com/CheatSheet was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: 'e37ea0a75cb998a0369066ba60004bc2b079c1f3898db523c73c0fbf78835241'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'

  app 'CheatSheet.app'

  zap delete: '~/Library/Caches/com.mediaatelier.CheatSheet',
      trash:  [
                '~/Library/Application Support/com.mediaatelier.CheatSheet',
                '~/Library/Preferences/com.mediaatelier.CheatSheet.plist',
              ]
end
