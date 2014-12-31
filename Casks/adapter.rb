cask :v1 => 'adapter' do
  version '2.1.3'
  sha256 '215987042772e1a55fb3a4592895286644344dddef478b3cccfd64235b20f6b7'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast 'http://www.macroplant.com/adapter/adapterAppcast.xml',
          :sha256 => 'b3c13d29cccda4e5c30660f2eba270259c4481d39422106b01c669a58d655802'
  homepage 'http://www.macroplant.com/adapter/'
  license :gratis

  app 'Adapter.app'
end
