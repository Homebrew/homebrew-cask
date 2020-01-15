cask 'alfred' do
  version '4.0.7_1131'
  sha256 'dc9973a3d7bdfb42e654205ba5ea31000287dcab68cbbebdd8d068e554092015'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast "https://www.alfredapp.com/app/update#{version.major}/general.xml"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true

  app "Alfred #{version.major}.app"

  uninstall quit: 'com.runningwithcrayons.Alfred'

  zap trash: [
               '~/Library/Application Support/Alfred',
               '~/Library/Caches/com.runningwithcrayons.Alfred',
               '~/Library/Preferences/com.runningwithcrayons.Alfred.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
             ]
end
