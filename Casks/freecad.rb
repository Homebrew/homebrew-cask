cask 'freecad' do
  version '0.17-13541.9948ee4'
  sha256 '48623a0dc48c93863ed5bdd76e19008e96c3c2492d3e49041e123b1d582dc383'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.split('-')[0]}/FreeCAD_#{version}-OSX-x86_64-Qt5.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
