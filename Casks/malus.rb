cask 'malus' do
  version '0.9.0-1'
  sha256 '393ed66263391028981e89ab67a0ee31d1ee624f3c1b00bb2e876501116751ce'

  # malusfile.com was verified as official when first introduced to the cask
  url "https://malusfile.com/uploads/Malus.#{version}.dmg"
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
