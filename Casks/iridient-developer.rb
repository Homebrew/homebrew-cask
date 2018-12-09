cask 'iridient-developer' do
  version '3.3.5'
  sha256 '6d7002298604c4e547b9ffc053d22c9911c16eeb031bca574535bd76b756ac6a'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
