cask 'freecad' do
  version '0.15.4671'
  sha256 '47815ef591d084e1ac248302256d1af5cdf3bba3b3c8afc2c477362f1cc95fd6'

  url "http://downloads.sourceforge.net/sourceforge/free-cad/FreeCAD-#{version}_x64_osx.zip"
  name 'FreeCAD'
  homepage 'http://sourceforge.net/projects/free-cad/'
  license :gpl

  app "FreeCAD-#{version}_x64_osx/FreeCAD.app"
end
