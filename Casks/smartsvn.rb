cask 'smartsvn' do
  version '9.2.1'
  sha256 'e886077e9b793c01f899e8318a1608f8a5dba264ec1cc45300602e4e1fafc4f4'

  url "http://www.smartsvn.com/static/svn/download/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSVN'
  homepage 'http://www.smartsvn.com/'

  app "SmartSVN #{version.major_minor}.app"

  zap delete: '~/Library/Saved Application State/com.syntevo.smartsvn.savedState',
      trash:  [
                '~/Library/Preferences/com.syntevo.smartsvn.plist',
                '~/Library/Preferences/SmartSVN',
              ]
end
