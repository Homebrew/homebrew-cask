cask 'iboostup' do
  version '5.2'
  sha256 'aede9188f3e7bebecd6a9fd56485d7727de0bfdeef143af0a62aadc03e25de2d'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: 'ba17c4c865240d48cb077deec1d33dbf279f85f02693352baa39908c18b15f9f'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'
  license :freemium

  app 'iBoostUp.app'
end
