cask 'cashculator' do
  version '1.3.7'
  sha256 '81b9be9131bcabd87a2c740028e5511b2f3db25abc15acc401cf7df62df12e30'

  url "http://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  appcast 'http://dl.apparentsoft.com/cashculator.rss',
          checkpoint: 'c5f684fdba54e32ba054459ec44f052bc76db4943bd284086516f351f50f902d'
  name 'Cashculator'
  homepage 'http://www.apparentsoft.com/cashculator'
  license :freemium

  app 'Cashculator.app'
end
