cask 'sling' do
  version '4.9.1.309'
  sha256 '8861d5370d890ddac57e60d2826ea1967279ce2d79c1a42e9c9e0e28984b0ba1'

  # webapp.movetv.com was verified as official when first introduced to the cask
  url 'http://webapp.movetv.com/player/osx/slingtv.dmg'
  appcast 'http://webapp.movetv.com/config/desktopupdate/sling/osx/production/Sling-snowleopard-sparkle.xml',
          checkpoint: '2a6ca0c0fcd53690e60ff5be34b7e1c07289228c52ed6e226a4ca5471df9fe86'
  name 'Sling TV'
  homepage 'http://www.sling.com/'
  license :gratis

  app 'Sling.app'

  zap delete: [
                '~/Library/Application Support/Sling-shell',
                '~/Library/Caches/com.Echostar.Sling',
                '~/Library//Preferences/com.Echostar.Sling.plist',
              ]
end
