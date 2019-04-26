cask 'freecad' do
  version '0.18-16110'
  sha256 '7eed9a7fe6d8732b5850114dd2ecabddc846d106ad0c3e0e2f490ce8ca2fac2d'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.major_minor}.1/FreeCAD_#{version}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
