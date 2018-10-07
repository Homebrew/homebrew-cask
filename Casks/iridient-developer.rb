cask 'iridient-developer' do
  version '3.2.3'
  sha256 '480add11528a77a13af15890912f595c87b82408dd2401d345bec445f2dfcce2'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
