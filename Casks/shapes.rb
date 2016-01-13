cask 'shapes' do
  version '4.5.4'
  sha256 'f99a11a0d98bbc07f16408659c7487d91236e65284ee579da346e9baf524ed9e'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          :checkpoint => 'f426841d45d581e9ee667ad3b2e1d4201021ee5a0efa12a41b418c95cd15bf2f'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Shapes.app'
end
