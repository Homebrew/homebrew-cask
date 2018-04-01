cask 'mesasqlite' do
  version '4.2.3'
  sha256 '010a4e43aba647cc79168e3fe2a290696ad68334a37308d06e2438147b1d9653'

  url "http://www.desertsandsoftware.com/DEMOS/MesaSQLite#{version.no_dots}.zip"
  name 'MesaSQLite'
  homepage 'http://www.desertsandsoftware.com/wordpress/?page_id=17'

  app 'MesaSQLite.app'
end
