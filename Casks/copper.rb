cask 'copper' do
  version '1.2.1'
  sha256 '91d7de2afad87112c0a33290128974c9171a1191a5e872242819a0af15ff41c5'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.appfruits.copper/Copper.dmg'
  appcast 'https://updates.devmate.com/com.appfruits.copper.xml',
          checkpoint: '277749a667b3f42d180270e6531e94b2697dc3206d088802a5f18bb784cc89e4'
  name 'Copper'
  homepage 'https://www.copper-app.com/'

  app 'Copper.app'
end
