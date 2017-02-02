cask 'shapes' do
  version '4.8.6'
  sha256 '2bd98ff0f77d32aa8bcc32f945d78c374b5db2e4d737cee64df9d527fad982ba'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: '2797b54dbdc8cba24209eba91cebbcbe4e273d80b0a64c13fb156c0b8adb24ae'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
