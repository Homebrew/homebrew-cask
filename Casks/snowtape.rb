cask :v1 => 'snowtape' do
  version '2.1-1076'
  sha256 '85d30c9b77ab926efa1954fe86f32cd7d3723aad1da62c91f4b88322582e5952'

  url "http://assets.vemedio.com/software/snowtape/Snowtape-#{version}.dmg"
  name 'Snowtape'
  appcast 'http://vemedio.com/appcast/snowtape2_1',
          :sha256 => '79ac6e1934109afb7d3c167d0cd6c9575df6cafa28e54398f8450bee68da4395'
  homepage 'http://vemedio.com/products/snowtape'
  license :commercial

  app 'Snowtape.app'
end
