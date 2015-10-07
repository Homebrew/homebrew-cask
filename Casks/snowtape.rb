cask :v1_1 => 'snowtape' do
  version '2.1-1076'
  sha256 '85d30c9b77ab926efa1954fe86f32cd7d3723aad1da62c91f4b88322582e5952'

  url "http://assets.vemedio.com/software/snowtape/Snowtape-#{version}.dmg"
  name 'Snowtape'
  appcast 'http://vemedio.com/appcast/snowtape2_1',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://vemedio.com/products/snowtape'
  license :commercial

  app 'Snowtape.app'

  caveats do
    discontinued
  end
end
