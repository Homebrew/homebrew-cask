cask 'macdown' do
  version '0.7.1'
  sha256 '4b26fb70b399cd998f226a78f81cd74348da19a8953aca80169fd7d00667496c'

  # github.com/MacDownApp/macdown was verified as official when first introduced to the cask
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
