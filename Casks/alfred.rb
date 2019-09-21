cask 'alfred' do
  version '4.0.4_1111'
  sha256 '640e007b00606b30094972184d115fe8c8219f29d6617d700c63cce5624f30e9'

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
