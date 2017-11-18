cask 'alfred' do
  version '3.5.1_883'
  sha256 '782ac85d76500f6b2968ebd2dda820331ba0567e509194799b0eaede2138e204'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true
  accessibility_access true

  app "Alfred #{version.major}.app"

  uninstall quit:       'com.runningwithcrayons.Alfred-3',
            login_item: 'Alfred 3'

  zap trash: [
               '~/Library/Application Support/Alfred 3',
               '~/Library/Caches/com.runningwithcrayons.Alfred-3',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-3.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-3.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences-3.savedState',
             ]
end
