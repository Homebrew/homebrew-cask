cask 'sling' do
  version '5.0.0.321'
  sha256 '7422424417eff1ea73f9b465dfd270639b9f37042d02b38fcb80fe3d25196fe3'

  # webapp.movetv.com was verified as official when first introduced to the cask
  url 'http://webapp.movetv.com/player/osx/slingtv.dmg'
  appcast 'http://webapp.movetv.com/config/desktopupdate/sling/osx/production/Sling-snowleopard-sparkle.xml',
          checkpoint: 'de5d79e53e3360f27b4574c426e3662cb93efabd78f3026ed1c8639353e64d8b'
  name 'Sling TV'
  homepage 'http://www.sling.com/'

  app 'Sling.app'

  zap delete: [
                '~/Library/Application Support/Sling-shell',
                '~/Library/Caches/com.Echostar.Sling',
                '~/Library//Preferences/com.Echostar.Sling.plist',
              ]
end
