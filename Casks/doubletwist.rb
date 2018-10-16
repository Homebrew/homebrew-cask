cask 'doubletwist' do
  version '3.2.0'
  sha256 '426a4468c79a99bdcf51d1be9601b7ebe5222fcc97d38b38d80b8116b75a8b13'

  url 'http://download.doubletwist.com/mac/doubleTwist.dmg'
  name 'doubleTwist'
  homepage 'https://www.doubletwist.com/desktop'

  app 'doubleTwist.app'

  zap trash: [
               '~/Library/Application Support/doubleTwist',
               '~/Library/Preferences/com.doubleTwist.desktop.plist',
               '~/Library/Caches/com.doubleTwist.desktop',
             ]
end
