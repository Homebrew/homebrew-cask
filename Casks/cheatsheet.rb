cask 'cheatsheet' do
  version '1.3.4'
  sha256 '7b2929ba987204a62c2f94416e41bf0c3ed03f7883cf3a798e20c679ebc88a3b'

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
