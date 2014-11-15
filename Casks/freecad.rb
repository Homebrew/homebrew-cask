cask :v1 => 'freecad' do
  version '0.14.3703'
  sha256 'ee7814988c91c489536cfa61b41ef65c90226758f3d4f588d520c6c54ea84dfb'

  url "https://downloads.sourceforge.net/sourceforge/free-cad/FreeCAD-#{version}_osx_x64.zip"
  homepage 'http://sourceforge.net/projects/free-cad/'
  license :oss

  app "FreeCAD-#{version}_osx_x64/FreeCAD.app"
end
