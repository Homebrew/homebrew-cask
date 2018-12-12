cask 'iridient-developer' do
  version '3.3.4'
  sha256 'ae7a279be57761dc14f0eb742e48de237241f0080f81ad5f8e61c4965aca9f6c'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
