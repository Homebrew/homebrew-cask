cask 'freecad' do
  version '0.19.pre,19566'
  sha256 'ede7a0e6da913bb6051147d5910c8113bc3ce21a8bfb123a67124099a2f7c3c9'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.major_minor}_#{version.patch}/FreeCAD_#{version.major_minor}-#{version.after_comma}-macOS-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
