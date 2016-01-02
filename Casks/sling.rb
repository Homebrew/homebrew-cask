cask 'sling' do
  version :latest
  sha256 :no_check

  # move.tv is the official download host per the vendor homepage
  url 'http://webapp.movetv.com/player/osx/slingtv.dmg'
  appcast 'http://webapp.movetv.com/config/desktopupdate/sling/osx/production/Sling-snowleopard-sparkle.xml',
          :sha256 => '366cdff448c779bf951a6c938b034fe912b2b85b387d1c3279efe89b0bc3c104'
  name 'Sling TV'
  homepage 'http://www.sling.com/'
  license :gratis

  app 'Sling.app'

  zap :delete => [
                  '~/Library/Application Support/Sling-shell',
                  '~/Library/Caches/com.Echostar.Sling',
                  '~/Library//Preferences/com.Echostar.Sling.plist',
                 ]
end
