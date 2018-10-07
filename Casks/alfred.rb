cask 'alfred' do
  version '3.7_938'
  sha256 'aff50ff5e57070530ab2ed7068f6816ce7feaf624d46b9dab5bdaf2017ab199d'

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
