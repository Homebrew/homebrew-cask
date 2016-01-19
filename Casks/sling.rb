cask 'sling' do
  version '4.8.9.288'
  sha256 'a1dde0cd5accb303e411e438d8eb56a1f4c88b0e36ba65a5538566006695d9c6'

  # move.tv is the official download host per the vendor homepage
  url 'http://webapp.movetv.com/player/osx/slingtv.dmg'
  appcast 'http://webapp.movetv.com/config/desktopupdate/sling/osx/production/Sling-snowleopard-sparkle.xml',
          checkpoint: '366cdff448c779bf951a6c938b034fe912b2b85b387d1c3279efe89b0bc3c104'
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
