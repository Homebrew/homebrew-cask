cask 'shapes' do
  version '4.8.6'
  sha256 '614251f65e50ab273dc2080a210e71fbf27778538c62819852997bb41c53f36a'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: 'a0b8c47ac54597d0cebf549ca72ed2464e79000f376472c34ecdc2cb4de1f1c4'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
