cask :v1 => 'shapes' do
  version '4.4'
  sha256 'b32ef0bdb153a170b0cfdd477b7055baa642635f8301e6c088c0babd91f65282'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '074f19b743011e94d5f09571b2d75f1a3a0cd750a8d1c0cdc5abf585aa06389a'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
