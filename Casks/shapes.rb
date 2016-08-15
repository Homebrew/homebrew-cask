cask 'shapes' do
  version '4.7.2'
  sha256 'a0eb7db19ce502f1a29015a922a6ff18035349c257a19cbe9536f11c93674ee9'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: '4e3a90784913f1477df9fd594cc9a7cbd69e9b7d85873cdbe123e4ba618c4cb6'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
