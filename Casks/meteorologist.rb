cask 'meteorologist' do
  version '3.0.2'
  sha256 '57aa9a4d41e9a225c97e3414ddecbfbe25b66a1cb27c7190542e922d4dfc279d'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: 'c049e545f0b588b45393211a66a4358cc18283992fb19706e2634dcf31b46876'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
