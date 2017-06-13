cask 'shapes' do
  version '4.9'
  sha256 'd457fb39c0f64987d17f294a6cd87c14e65f170fc8a3bae9678026bee70f84fa'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: 'b373ee79ef16e940053d500c6f622ac8aaa2dd09d3fffbf90b3b3e33d3aa8c8c'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
