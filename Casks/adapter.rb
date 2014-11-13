cask :v1 => 'adapter' do
  version '2.1.2'
  sha256 '3996193eb2b228ca04969a3a527c37ed3f9b811796926ac7cc177ae41188812a'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast 'http://www.macroplant.com/adapter/adapterAppcast.xml',
          :sha256 => 'b3c13d29cccda4e5c30660f2eba270259c4481d39422106b01c669a58d655802'
  homepage 'http://www.macroplant.com/adapter/'
  license :gratis

  app 'Adapter.app'
end
