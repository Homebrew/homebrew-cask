cask 'shapes' do
  version '4.5.5'
  sha256 '8650580e540fe07c654d9d183dbe7883468ae2aa2226c13d49f3a28246824244'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: '9ffd949e787523019d9985bf81542347cb767b5964da81b85b7c82f1551ff656'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
