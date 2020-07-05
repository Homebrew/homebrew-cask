cask 'macdown' do
  version '0.7.3'
  sha256 '57a0568354ee7af694e825f19f9f03b9844c6301c70ea04fb324b6efdf7fdcd0'

  # github.com/MacDownApp/macdown/ was verified as official when first introduced to the cask
  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://macdown.uranusjr.com/sparkle/macdown/stable/appcast.xml'
  name 'MacDown'
  homepage 'https://macdown.uranusjr.com/'

  auto_updates true

  app 'MacDown.app'
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  zap trash: [
               '~/Library/Application Support/MacDown',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uranusjr.macdown.sfl*',
               '~/Library/Caches/com.uranusjr.macdown',
               '~/Library/Cookies/com.uranusjr.macdown.binarycookies',
               '~/Library/Preferences/com.uranusjr.macdown.plist',
               '~/Library/Saved Application State/com.uranusjr.macdown.savedState',
               '~/Library/WebKit/com.uranusjr.macdown',
             ]
end
