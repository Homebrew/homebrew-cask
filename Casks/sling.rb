cask 'sling' do
  version '4.8.11.301'
  sha256 '498f429ae029708f15a63134a1f9746da9114082f862284d83f01dfa7d5e70de'

  # move.tv is the official download host per the vendor homepage
  url 'http://webapp.movetv.com/player/osx/slingtv.dmg'
  appcast 'http://webapp.movetv.com/config/desktopupdate/sling/osx/production/Sling-snowleopard-sparkle.xml',
          checkpoint: '26922f721ba19cde9bcaf373d1b740d280f54266fb2ebea5d2ee90bcb9f383c1'
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
