cask 'smartsvn' do
  version '11.0.0'
  sha256 'f330c30be85dd5df101c2414f8c9f003f7305c786fbaabd3bafa5d506f78e329'

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
