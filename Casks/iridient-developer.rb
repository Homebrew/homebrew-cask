cask 'iridient-developer' do
  version '3.3.7'
  sha256 '4bed84131af5d2083c90ce69803223d2bc388b8bcc55ccc760b7e6a0535875d8'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
