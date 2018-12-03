cask 'iridient-developer' do
  version '3.3.3'
  sha256 'fd1737ce307cb8269c6fd4eeb77d663a7e4e9dd0fde1ff439e8fd4b2c6a7f1cd'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
