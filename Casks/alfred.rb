cask 'alfred' do
  version '4.0.5_1118'
  sha256 '35f0e8be03798d0f3ca2ca00ea53d006e88bd84d78306b985a53453e37754d09'

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
