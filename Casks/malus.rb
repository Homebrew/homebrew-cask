cask 'malus' do
  version '0.7.2,1572234577'
  sha256 '5306f0d2643c1bca9bdf6e9bd65fbf86d4bf33272141e6ad8b847b976268441a'

  # malusfile.com was verified as official when first introduced to the cask
  url "https://malusfile.com/uploads/Malus-mac-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://api.getmalus.com/api/checkDesktopUpdate?type=mac'
  name 'Malus'
  homepage 'https://getmalus.com/'

  auto_updates true

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
