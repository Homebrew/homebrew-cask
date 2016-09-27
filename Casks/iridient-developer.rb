cask 'iridient-developer' do
  version '3.1.0'
  sha256 'bf2dfeaa4f1c16eaa159566a6191d174b69e7e46f5b47375f44528eb0687bc88'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'
  license :freemium

  app 'Iridient Developer.app'
end
