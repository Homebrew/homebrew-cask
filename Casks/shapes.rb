cask :v1 => 'shapes' do
  version '4.4'
  sha256 '520c4fb4dc3580f713fd98e26cadf8495febe1bd0e553d3b8dbd2ebd9cad672f'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '128a50bf57ca205718efbc69076f800da79dfd6d08e4705da216e757c064fd76'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
