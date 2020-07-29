cask 'cheatsheet' do
  version '1.5'
  sha256 '71109af0ba22a386667904752e2f5b5e4d45a4b95e3944899bb326831a2c85c8'

  # mediaatelier.com/CheatSheet/ was verified as official when first introduced to the cask
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
