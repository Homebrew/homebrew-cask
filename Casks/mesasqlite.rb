cask 'mesasqlite' do
  version '4.0.8'
  sha256 '16741eb458127db0ce72e71824ddf938ee7b30a8b6ea4bc0e82357aab5b3359b'

  url "http://www.desertsandsoftware.com/DEMOS/MesaSQLite#{version.no_dots}.zip"
  name 'MesaSQLite'
  homepage 'http://www.desertsandsoftware.com/wordpress/?page_id=17'
  license :commercial

  app 'MesaSQLite.app'
end
