cask 'freecad' do
  version '0.18-16110'
  sha256 '44b1f4fb90c000e84694135318b13defd52444727440a730bdc292b6dd095347'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.major_minor}.1/FreeCAD_#{version}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
