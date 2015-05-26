cask :v1 => 'shapes' do
  version '4.0.3'
  sha256 '93163aede1f41ffb786dc6c9a2e6739221347804954d05b7221d3248556b5e7b'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '9236ae13bdef0382deeb4dbde7b52764c38baed3087a15b255a247d116867b2d'
  homepage 'http://shapesapp.com'
  license :commercial

  app 'Shapes.app'
end
