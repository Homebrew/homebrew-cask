cask 'sling' do
  version '5.0.0.321'
  sha256 '7422424417eff1ea73f9b465dfd270639b9f37042d02b38fcb80fe3d25196fe3'

  # webapp.movetv.com was verified as official when first introduced to the cask
  url 'https://webapp.movetv.com/player/osx/slingtv.dmg'
  appcast 'https://webapp.movetv.com/config/desktopupdate/sling/osx/production/Sling-snowleopard-sparkle.xml'
  name 'Sling TV'
  homepage 'http://www.sling.com/'

  app 'Sling.app'

  zap trash: [
               '~/Library/Application Support/Sling-shell',
               '~/Library/Caches/com.Echostar.Sling',
               '~/Library/Preferences/com.Echostar.Sling.plist',
             ]
end
