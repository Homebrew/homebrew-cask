cask 'malus' do
  version '0.9.0'
  sha256 '77ceaa6b08bebc169c16cbd3ce179075334949335a9ba606cb5fc1504cf8e58d'

  # malusfile.com was verified as official when first introduced to the cask
  url "https://malusfile.com/uploads/Malus-#{version}.dmg"
  appcast 'https://api.getmalus.com/api/checkDesktopUpdate?type=mac'
  name 'Malus'
  homepage 'https://getmalus.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Malus.app'

  zap trash: [
               '/Library/Application Support/Malus',
               '~/Library/Application Support/Malus',
               '~/Library/Application Support/com.getmalus.malus',
               '~/Library/Logs/com.getmalus.malus',
               '~/Library/Caches/com.getmalus.malus',
               '~/Library/Preferences/com.getmalus.malus.plist',
               '~/Library/Saved Application State/com.getmalus.malus.savedState',
             ]
end
