cask 'smartsvn' do
  version '11.0.4'
  sha256 'de2f6f31b1ab7292dc7450f584445c47b6527add9773859dffa6454021ebb705'

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
