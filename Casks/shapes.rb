cask :v1 => 'shapes' do
  version '4.3.1'
  sha256 '2133d7064c88738596c6f76ce7902af999ca03a3459c68041ce932abe0ead1f1'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '9236ae13bdef0382deeb4dbde7b52764c38baed3087a15b255a247d116867b2d'
  homepage 'http://shapesapp.com'
  license :commercial

  app 'Shapes.app'
end
