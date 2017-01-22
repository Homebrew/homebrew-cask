cask 'freecad' do
  version '0.16-6706.f86a4e4'
  sha256 '9d05b21103bfe0dd7de2ec006fc4c1baca3e7ff32d4b570d91e627caded40178'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/0.16/FreeCAD_#{version}-OSX-x86_64.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom',
          checkpoint: '02a4638deb1035edb9d7fd90503cf5c31133b95550629b7524b677dea67f1d6e'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
