cask 'iridient-developer' do
  version '3.3.11'
  sha256 '456a5238869744779f58d197a8f90c103a934b5146923e3cb5daea1013c5a5b7'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
