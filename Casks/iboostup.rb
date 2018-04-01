cask 'iboostup' do
  version '5.9.81'
  sha256 '6eb7a40dbe54b60064403980cfda3e33b89f35be3570978d4a51a312f82b2080'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '169038ac2747ec13607379452b11fa2e8b090e6928275f997dc512fca51b4044'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
