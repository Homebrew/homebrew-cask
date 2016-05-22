cask 'freecad' do
  version '0.16-6704.0c449d7'
  sha256 '2c996a31f37b8937ecfa31baa98b0f42e43549e66f959c36ecb6d1289d1a89b0'

  url "https://github.com/FreeCAD/FreeCAD/releases/download/0.16/FreeCAD_#{version}-OSX-x86_64.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom',
          checkpoint: '2ba5a313f5b3a3d186cc5f47f81067f1e5adb8b79d5821cf73aa6afe979c7b76'
  name 'FreeCAD'
  homepage 'http://www.freecadweb.org'
  license :gpl

  app 'FreeCAD.app'
end
