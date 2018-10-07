cask 'smartsvn' do
  version '9.3.1'
  sha256 '89d4ac14ca2be9b985afffbb2ec3cbeaefae32704809e7612fa78dc75eaa4004'

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.smartsvn.com/documents/smartsvn/changelog.txt'
  name 'SmartSVN'
  homepage 'https://www.smartsvn.com/'

  app "SmartSVN #{version.major_minor}.app"

  zap trash: [
               '~/Library/Preferences/com.syntevo.smartsvn.plist',
               '~/Library/Preferences/SmartSVN',
               '~/Library/Saved Application State/com.syntevo.smartsvn.savedState',
             ]
end
