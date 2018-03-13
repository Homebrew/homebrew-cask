cask 'smartsvn' do
  version '9.2.3'
  sha256 '39842b2d18bdfcae96d3edc89f82f7592f70a0b2e8577864c8db9b365bf52119'

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.smartsvn.com/documents/smartsvn/changelog.txt',
          checkpoint: '2888cace4f75b96124afec6611fae4d5f01bde2baff4848ddf3a18ac454d2560'
  name 'SmartSVN'
  homepage 'http://www.smartsvn.com/'

  app "SmartSVN #{version.major_minor}.app"

  zap trash: [
               '~/Library/Preferences/com.syntevo.smartsvn.plist',
               '~/Library/Preferences/SmartSVN',
               '~/Library/Saved Application State/com.syntevo.smartsvn.savedState',
             ]
end
