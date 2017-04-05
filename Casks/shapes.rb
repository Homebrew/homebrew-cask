cask 'shapes' do
  version '4.8.7'
  sha256 'e7cb58eb7788779d6c28276146d29a652a610da1aa3890134406c33f9a71b0b4'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: 'f6e160c9362241923e9b50556f3ca93de500320d29e3108aa8bec7d8b239ce76'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
