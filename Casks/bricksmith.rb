cask :v1 => 'bricksmith' do
  version '3.0'
  sha256 'bf7dcd7508d2d6e37f6079080e8ae51095e14d05eb507ad85ac4bbaf5b9ae7c5'

  url "http://downloads.sourceforge.net/sourceforge/bricksmith/bricksmith/Bricksmith%20#{version}/BricksmithComplete#{version}.zip"
  homepage 'http://bricksmith.sourceforge.net/'
  license :oss

  app 'Bricksmith/Bricksmith.app'
end
