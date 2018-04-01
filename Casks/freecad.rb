cask 'freecad' do
  version '0.16-6712.da2d364'
  sha256 '8b1d6410a2b276de393b99ff21bbd4888c31bcae6bdf0d400e198b291333f345'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/0.16.6712/FreeCAD_#{version}-OSX-x86_64.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom',
          checkpoint: '49ced24895e84a20852ec3eb2e50669496a821b7e63e420f4824ef243400c210'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
