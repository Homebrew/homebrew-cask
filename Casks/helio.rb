cask 'helio' do
  version '1.7'
  sha256 '0b1b181584ec3abc948e1a766d25a43f63f84bc55d9e7205696e87814a03cb43'

  url "http://helioworkstation.com/app/Helio-#{version}.dmg"
  name 'Helio'
  homepage 'https://helioworkstation.com/'

  app 'Helio.app'
end
