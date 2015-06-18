cask :v1 => 'cashculator' do
  version '1.3.6'
  sha256 '6b7985e902b79ea444ba911d7f4c688b1c059a98c893c5c5dbe3de0a319233bd'

  url "http://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  name 'Cashculator'
  appcast 'http://dl.apparentsoft.com/cashculator.rss',
          :sha256 => 'cb4c7addc61d011a397e6d73443f99e81b9bc9b435c79426f10f7dc219891d07'
  homepage 'http://www.apparentsoft.com/cashculator'
  license :freemium

  app 'Cashculator.app'
end
