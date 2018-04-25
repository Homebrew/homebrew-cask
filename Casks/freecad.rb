cask 'freecad' do
  version '0.17-13519.1a8b868'
  sha256 '4693eff09a7c71f7e554d72edd9a403c26cce933bf047bb77157b483b4ac4d40'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.split('-')[0]}/FreeCAD_#{version}-OSX-x86_64-Qt5.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom',
          checkpoint: 'd714e50ea7f8e2fbbab2fcaee61f9398894ea236af3d835bebc2d65c7d433884'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
