class Adapter < Cask
  version '2.1.1'
  sha256 'e46706c1b64acc2cd927456ba03be5220c2bc406c4eacab6fdd28490fb452a94'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast 'http://www.macroplant.com/adapter/adapterAppcast.xml',
          :sha256 => 'b3c13d29cccda4e5c30660f2eba270259c4481d39422106b01c669a58d655802'
  homepage 'http://www.macroplant.com/adapter/'
  license :gratis

  app 'Adapter.app'
end
