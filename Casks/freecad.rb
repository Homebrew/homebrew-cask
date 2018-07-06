cask 'freecad' do
  version '0.17-13519.1a8b868'
  sha256 '4693eff09a7c71f7e554d72edd9a403c26cce933bf047bb77157b483b4ac4d40'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.split('-')[0]}/FreeCAD_#{version}-OSX-x86_64-Qt5.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
