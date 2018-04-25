cask 'smartsvn' do
  version '9.3.0'
  sha256 '23d1b3b00513638330498cbac1ae0682efa6eb831210ccfa139ff25c2695433a'

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.smartsvn.com/documents/smartsvn/changelog.txt',
          checkpoint: '942f20a0363b7402291ef1e49e9c734e22d28557ed6767ccb3c7ce521a329432'
  name 'SmartSVN'
  homepage 'http://www.smartsvn.com/'

  app "SmartSVN #{version.major_minor}.app"

  zap trash: [
               '~/Library/Preferences/com.syntevo.smartsvn.plist',
               '~/Library/Preferences/SmartSVN',
               '~/Library/Saved Application State/com.syntevo.smartsvn.savedState',
             ]
end
