cask 'iridient-developer' do
  version '3.3.2'
  sha256 '03c4095d726adff4bb1d67282ade462a234aee8c7ee1e28afb80d169034e2b2a'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
