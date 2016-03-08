cask 'iboostup' do
  version '5.3.2'
  sha256 'd1356b575836690b69a81ce592b442aedda9bdc09f56852830fe14ed46ff1802'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '63fb737ac730a7bc770a2ba5a335612ce5eb93bec8421d4a13fa403d438e605a'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'
  license :freemium

  app 'iBoostUp.app'
end
