cask 'malus' do
  version '1.0.2'
  sha256 '918b4009d876f852a97905f9e1094385a835a96e9f53b69ef3d7df263dd508b7'

  # malusfile.com was verified as official when first introduced to the cask
  url "https://malusfile.com/uploads/Malus-mac-#{version}.dmg"
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
