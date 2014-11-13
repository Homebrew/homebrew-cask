cask :v1 => 'bassshapes' do
  version '0.1'
  sha256 'fd704e0f89e1cbd4c4ef6678c3721533840f9045d027d640df291491523fa66b'

  url "http://yellquietly.com/downloads/BassShapes_v#{version.gsub('.', '')}.zip"
  homepage 'http://yellquietly.com/bass-shapes/'
  license :gratis

  app "BassShapes_v#{version.gsub('.', '')}/BassShapes.app"
end
