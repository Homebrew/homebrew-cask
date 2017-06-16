cask 'cheatsheet' do
  version '1.2.7'
  sha256 'cfe0c699e04ea116965d13be02eee8358d5acd89c32144c388d0e28ee693fbd3'

  # mediaatelier.com/CheatSheet was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: '9d6994ef2b83ba8bd7ef7ab4ff4aff486ca226c28fac40569f448e27790d7ab2'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'

  app 'CheatSheet.app'

  zap delete: [
                '~/Library/Application Support/com.mediaatelier.CheatSheet',
                '~/Library/Preferences/com.mediaatelier.CheatSheet.plist',
              ]
end
