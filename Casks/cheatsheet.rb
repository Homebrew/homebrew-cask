cask 'cheatsheet' do
  version '1.5.1'
  sha256 '01148199feabc5cb592c37f7594bd0d24fac786270ea00431293dcac098b1461'

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
