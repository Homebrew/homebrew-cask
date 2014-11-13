cask :v1 => 'openscad' do
  version '2014.03'
  sha256 'c324c19c2d36f21517b602f8ae2ec04fa14c90896c91fc8dbb37aed5b3ba16bd'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  homepage 'http://www.openscad.org/'
  license :unknown

  app 'OpenSCAD.app'
end
