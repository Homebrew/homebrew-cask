cask 'iridient-developer' do
  version '3.3.6'
  sha256 '3df50633ea449d9848ee7a76de757326e98b532cc4e12b16bdf2385f0591b6ed'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
