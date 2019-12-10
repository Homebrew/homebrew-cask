cask 'smartsvn' do
  version '11.0.3'
  sha256 '5f1d4d0c84ed747d398b476aeeab90e5a188c312b77fbf548205caf7b18810a3'

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.smartsvn.com/documents/smartsvn/changelog.txt'
  name 'SmartSVN'
  homepage 'https://www.smartsvn.com/'

  app "SmartSVN #{version.major}.app"

  zap trash: [
               '~/Library/Preferences/com.syntevo.smartsvn.plist',
               '~/Library/Preferences/SmartSVN',
               '~/Library/Saved Application State/com.syntevo.smartsvn.savedState',
             ]
end
