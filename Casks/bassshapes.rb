cask 'bassshapes' do
  version '0.1'
  sha256 'fd704e0f89e1cbd4c4ef6678c3721533840f9045d027d640df291491523fa66b'

  url "http://yellquietly.com/downloads/BassShapes_v#{version.delete('.')}.zip"
  name 'Bass Shapes'
  homepage 'http://yellquietly.com/bass-shapes/'
  license :gratis

  app "BassShapes_v#{version.delete('.')}/BassShapes.app"
end
