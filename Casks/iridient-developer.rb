cask 'iridient-developer' do
  version '3.3.9'
  sha256 '0c5b1b8ded16127da5bf1df7b2de678b6d35d0ca01325c787ae1f6402b297ba6'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
