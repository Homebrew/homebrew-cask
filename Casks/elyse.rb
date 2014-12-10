cask :v1 => 'elyse' do
  version '3.1.0'
  sha256 'b66bf959d30045e2f80193a6b4f9de88341c9c9e13a691afa74ddcf44eee02d7'

  url "http://silkwoodsoftware.com/Elyse-#{version.gsub('.','')}.dmg"
  homepage 'http://silkwoodsoftware.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Elyse.app'
end
