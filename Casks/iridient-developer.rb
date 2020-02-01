cask 'iridient-developer' do
  version '3.3.10'
  sha256 '899785351c86d0208f6df16011d53654ec73a6ce8dec2c35f860e848a6e872ec'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
