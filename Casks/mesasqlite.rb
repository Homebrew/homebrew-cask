cask 'mesasqlite' do
  version '4.3.5'
  sha256 'ae458d82235aabedb2e32f12e514f69b3c931ca8b1f63cf7d271e3243de8bc97'

  url "http://www.desertsandsoftware.com/DEMOS/MesaSQLite#{version.no_dots}.zip"
  name 'MesaSQLite'
  homepage 'http://www.desertsandsoftware.com/wordpress/?page_id=17'

  app 'MesaSQLite.app'
end
