cask :v1 => 'shapes' do
  version '4.5'
  sha256 'f56ed20875bc99832f22532a6cdb9e6ae877a8c060c4770054c95c1cfc7f9a35'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name 'Shapes'
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :sha256 => '0973eb649f00f416934e0f12ff6c2446adf3d0382e9d1f1d71b63225b86698ac'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
