cask 'malus' do
  version '1.0.1'
  sha256 '13fee5e9eb756fa3a6ca75d1eacd1ac24298432d4f7ac9fad1317ca81bb419cd'

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
