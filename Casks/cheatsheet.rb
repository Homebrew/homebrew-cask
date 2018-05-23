cask 'cheatsheet' do
  version '1.2.9'
  sha256 '0d3bb2a72a9f108ac37ad62b3ed278b1344f92835b7d47548bfa2d49777aefec'

  # mediaatelier.com/CheatSheet was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: '92a7ca5741dbdb00c809ffc7a7b36652ce30ad1b4c37bee5509e8c946d167b8f'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'

  app 'CheatSheet.app'

  zap trash: [
               '~/Library/Application Support/com.mediaatelier.CheatSheet',
               '~/Library/Caches/com.mediaatelier.CheatSheet',
               '~/Library/Preferences/com.mediaatelier.CheatSheet.plist',
             ]
end
