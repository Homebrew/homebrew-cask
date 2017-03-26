cask 'shapes' do
  version '4.8.6'
  sha256 '614251f65e50ab273dc2080a210e71fbf27778538c62819852997bb41c53f36a'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: '2797b54dbdc8cba24209eba91cebbcbe4e273d80b0a64c13fb156c0b8adb24ae'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
