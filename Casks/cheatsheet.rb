cask 'cheatsheet' do
  version '1.3.1'
  sha256 '96926e9be1b676f4d75c6dec449c694f000e33e2b084fe74d4e3b5a049392d34'

  # mediaatelier.com/CheatSheet was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'

  app 'CheatSheet.app'

  zap trash: [
               '~/Library/Application Support/com.mediaatelier.CheatSheet',
               '~/Library/Caches/com.mediaatelier.CheatSheet',
               '~/Library/Preferences/com.mediaatelier.CheatSheet.plist',
             ]
end
