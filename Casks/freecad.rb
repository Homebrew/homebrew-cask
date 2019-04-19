cask 'freecad' do
  version '0.18-16110'
  sha256 '4b5de3237e498041e5fa7164dad4f70723c610e703696469486b9cd2a015a4be'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.major_minor}.1/FreeCAD_#{version}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
