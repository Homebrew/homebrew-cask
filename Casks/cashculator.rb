cask :v1 => 'cashculator' do
  version '1.3.6'
  sha256 '6b7985e902b79ea444ba911d7f4c688b1c059a98c893c5c5dbe3de0a319233bd'

  url "http://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  name 'Cashculator'
  homepage 'http://www.apparentsoft.com/cashculator'
  license :freemium

  app 'Cashculator.app'
end
