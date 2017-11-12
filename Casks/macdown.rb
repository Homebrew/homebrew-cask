cask 'macdown' do
  version '0.7.1'
  sha256 '4b26fb70b399cd998f226a78f81cd74348da19a8953aca80169fd7d00667496c'

  # github.com/MacDownApp/macdown was verified as official when first introduced to the cask
  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://macdown.uranusjr.com/sparkle/macdown/stable/appcast.xml',
          checkpoint: '0f66f2a2ec60b25ce7b15cf153db4245badf0c1252196e2bfda8a9d401767789'
  name 'MacDown'
  homepage 'https://macdown.uranusjr.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'MacDown.app'
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  zap delete: [
                '~/Library/Application Support/MacDown',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uranusjr.macdown.sfl*',
                '~/Library/Caches/com.uranusjr.macdown',
                '~/Library/Cookies/com.uranusjr.macdown.binarycookies',
                '~/Library/Preferences/com.uranusjr.macdown.plist',
                '~/Library/Saved Application State/com.uranusjr.macdown.savedState',
                '~/Library/WebKit/com.uranusjr.macdown',
              ]
end
