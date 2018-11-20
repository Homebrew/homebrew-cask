cask 'iridient-developer' do
  version '3.3.1'
  sha256 'b5f05e9772a9d7f77676f5f757a51e4817f0a1e741fbb935f7812d671fd7c5bc'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
