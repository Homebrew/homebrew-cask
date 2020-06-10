cask 'iridient-developer' do
  version '3.3.13'
  sha256 'cc7015a73a41c5209643d5a8ccf06748e5e46e640b0dc889564f4d9c2a5202c0'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
