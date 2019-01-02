cask 'alfred' do
  version '3.7.1_946'
  sha256 '5488c3b22a1eacef06635c7d9e66b642ceeec539b9ee5d301787f4e85a5fee2c'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast 'https://www.alfredapp.com/app/update/general.xml'
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true

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
