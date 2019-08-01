cask 'alfred' do
  version '4.0.3_1092'
  sha256 'bf341db22e66501d898ae716cb64dbcb146ab4925a0b2e3eb02f34734d73ddac'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast "https://www.alfredapp.com/app/update#{version.major}/general.xml"
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
