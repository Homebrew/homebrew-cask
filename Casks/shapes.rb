cask :v1 => 'shapes' do
  version '4.4'
  sha256 'b32ef0bdb153a170b0cfdd477b7055baa642635f8301e6c088c0babd91f65282'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '128a50bf57ca205718efbc69076f800da79dfd6d08e4705da216e757c064fd76'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
