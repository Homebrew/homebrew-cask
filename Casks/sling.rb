cask 'sling' do
  version '4.8.10.297'
  sha256 '5460cf66dc78525ee01903cd02b11b0bc53e77ce79fcc7d70b862b7fbf7308df'

  # move.tv is the official download host per the vendor homepage
  url 'http://webapp.movetv.com/player/osx/slingtv.dmg'
  appcast 'http://webapp.movetv.com/config/desktopupdate/sling/osx/production/Sling-snowleopard-sparkle.xml',
          checkpoint: '38bcead9728f040d6b2b9d052222e003aa62a40f027d20019b7a38d0c355658a'
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
