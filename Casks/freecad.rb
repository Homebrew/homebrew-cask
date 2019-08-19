cask 'freecad' do
  version '0.18.3,16131'
  sha256 '03bb2bbeeafa9298f2cbbbd44a9e18c8f5fb1f3d7e4d7cf67d43c469f06898d3'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor}-#{version.after_comma}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
