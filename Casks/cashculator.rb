cask 'cashculator' do
  version '1.3.6'
  sha256 '6b7985e902b79ea444ba911d7f4c688b1c059a98c893c5c5dbe3de0a319233bd'

  url "http://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  appcast 'http://dl.apparentsoft.com/cashculator.rss',
          checkpoint: '56b9baae5a54c6fd4d83472ab3f33a9f2a7d555bd6b18bff4dbb3502962fbd30'
  name 'Cashculator'
  homepage 'http://www.apparentsoft.com/cashculator'
  license :freemium

  app 'Cashculator.app'
end
