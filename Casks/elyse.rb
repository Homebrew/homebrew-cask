cask 'elyse' do
  version '3.1.0'
  sha256 'b66bf959d30045e2f80193a6b4f9de88341c9c9e13a691afa74ddcf44eee02d7'

  url "http://silkwoodsoftware.com/Elyse-#{version.delete('.')}.dmg"
  name 'Elyse'
  homepage 'http://silkwoodsoftware.com/'
  license :freemium

  app 'Elyse.app'
end
