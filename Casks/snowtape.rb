cask :v1 => 'snowtape' do
  version '2.1-1076'
  sha256 '85d30c9b77ab926efa1954fe86f32cd7d3723aad1da62c91f4b88322582e5952'

  url "http://assets.vemedio.com/software/snowtape/Snowtape-#{version}.dmg"
  homepage 'http://vemedio.com/products/snowtape'
  license :commercial

  app 'Snowtape.app'
end
