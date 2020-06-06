cask 'iridient-developer' do
  version '3.3.12'
  sha256 '946708634b42f0b081c9b0aab9a62f32bf5dd083afe9efa29c12ef0e9807a210'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
