cask 'freecad' do
  version '0.18-16110'
  sha256 '9b165897ed7eabfb84e501ed75adee2001b1647701b1d5488482d866a7b32cf8'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.major_minor}.1/FreeCAD_#{version}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
