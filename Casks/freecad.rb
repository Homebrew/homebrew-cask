cask 'freecad' do
  version '0.17-13509.0258808'
  sha256 '96bd5548c548fd7948bf65605ac1ed6a3ac99ddce06ae363ef8f7eb6c6a3d883'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.split('-')[0]}/FreeCAD_#{version}-OSX-x86_64-Qt5.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom',
          checkpoint: '49296e9c37958188f352ffa5ec8834a6068e60e3773ef0fc495afbc8a616635c'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
