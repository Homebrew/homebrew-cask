cask 'cashculator' do
  version '1.3.6'
  sha256 '6b7985e902b79ea444ba911d7f4c688b1c059a98c893c5c5dbe3de0a319233bd'

  url "http://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  appcast 'http://dl.apparentsoft.com/cashculator.rss',
          :sha256 => 'c0ad69afcc31a03b28469f91b90cca502e87abcc409baef3eeef28f76412bb0e'
  name 'Cashculator'
  homepage 'http://www.apparentsoft.com/cashculator'
  license :freemium

  app 'Cashculator.app'
end
