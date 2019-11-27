cask 'malus' do
  version '0.7.5'
  sha256 '45b6bf151202d2838616c166d9145290cdd630f8cff0c71edcdfc5d4ef630769'

  # malusfile.com was verified as official when first introduced to the cask
  url "https://malusfile.com/downloads/Malus-mac-#{version}.dmg"
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
