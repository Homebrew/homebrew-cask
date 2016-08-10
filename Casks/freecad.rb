cask 'freecad' do
  version '0.16-6705.acfe417'
  sha256 '7ddd1dc718b9338bc3581f02f107a80d3dfe3dfe147f7dcd7c5d28af864654f9'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/0.16/FreeCAD_#{version}-OSX-x86_64.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom',
          checkpoint: 'ac051636765e99376ab15d484b3dd0f938f59f4fa48a627a367a97a44ca5ad86'
  name 'FreeCAD'
  homepage 'http://www.freecadweb.org'
  license :gpl

  app 'FreeCAD.app'
end
