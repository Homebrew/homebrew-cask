cask 'alfred' do
  version '4.0.1_1078'
  sha256 'c77fe23d9cd2987b5f49d84cc2e5e50972c8c37f0df9c88f01ff29ac2881a5a3'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast 'https://www.alfredapp.com/app/update/general.xml'
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true

  app "Alfred #{version.major}.app"

  uninstall quit:       'com.runningwithcrayons.Alfred',
            login_item: 'Alfred'

  zap trash: [
               '~/Library/Application Support/Alfred',
               '~/Library/Caches/com.runningwithcrayons.Alfred',
               '~/Library/Preferences/com.runningwithcrayons.Alfred.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
             ]
end
