cask 'freecad' do
  version '0.18.3,16131'
  sha256 '4d107f5867652ead6fd154ae11749ffa9d4ab473a124ab0673e0f353abf6288d'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor}-#{version.after_comma}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
