cask 'freecad' do
  version '0.18.1,16110'
  sha256 '4bfb8db7d1e8945a1082b7331862979e97656f4d2b18fd6d17721b4c0e19b2cd'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor}-#{version.after_comma}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
