cask :v1 => 'mesasqlite' do
  version '4.0.8'
  sha256 '16741eb458127db0ce72e71824ddf938ee7b30a8b6ea4bc0e82357aab5b3359b'

  url "http://www.desertsandsoftware.com/DEMOS/MesaSQLite#{version.gsub('.','')}.zip"
  homepage 'http://www.desertsandsoftware.com/wordpress/?page_id=17'
  license :unknown    # todo: improve this machine-generated value

  app 'MesaSQLite.app'
end
