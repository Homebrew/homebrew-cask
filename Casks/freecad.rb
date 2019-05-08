cask 'freecad' do
  version '0.18-16110'
  sha256 '62aebe92f9a142b7f3c7621f984ba415baf2ba7a691d29f3a19a2b2efc53cce5'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.major_minor}.1/FreeCAD_#{version}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
