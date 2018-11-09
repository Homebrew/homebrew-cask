cask 'iridient-developer' do
  version '3.3.0'
  sha256 '9eed6e134c8868ee99a63024f02c7b15b19577809ae566dd9495c5f264dc957e'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
