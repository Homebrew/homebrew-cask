cask 'bassshapes' do
  version '01.2'
  sha256 '7f055b8114c9f5307bd1a0247532003b1e500974c5b60067e4770fcd24fae61e'

  url "http://yellquietly.com/downloads/BassShapes_v#{version.no_dots}.zip"
  name 'Bass Shapes'
  homepage 'http://yellquietly.com/bass-shapes/'

  app "BassShapes_v#{version.no_dots}/BassShapes.app"
end
