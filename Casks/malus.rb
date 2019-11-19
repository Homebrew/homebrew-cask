cask 'malus' do
  version '0.7.3,1573013349'
  sha256 'c242d33141d6f7e509a35c416be24ca87847ac1fe7313ccc223aed0ffbed7184'

  # malusfile.com was verified as official when first introduced to the cask
  url "https://malusfile.com/uploads/Malus-#{version.before_comma}-#{version.after_comma}.dmg"
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
