cask 'smartsvn' do
  version '11.0.2'
  sha256 '150c3f0aa71b4b75be99865e52429c81160a59b779de697de684486bd1646edf'

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
