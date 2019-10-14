cask 'pdf-toolbox' do
  version '2.0.2'
  sha256 'b09ce8bedd2d62478668910edb12e7c9fbdca70591d4a623edaa084bd99786eb'

  url "https://www.lightenpdf.com/upload/download/PDF-Toolbox-Mac-#{version.no_dots}.dmg"
  appcast 'https://www.lightenpdf.com/pdf-toolbox-mac.html'
  name 'PDF Toolbox'
  homepage 'https://www.lightenpdf.com/pdf-toolbox-mac.html'

  app 'PDF Toolbox.app'
end
