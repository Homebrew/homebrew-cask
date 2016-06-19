cask 'librecad' do
  version '2.0.10'
  sha256 '53735cc765cc8e89f28c19d1b5696ccda985e7ad6196e3fb504ab6297c15518a'

  url "http://downloads.sourceforge.net/project/librecad/OSX/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg"
  name 'LibreCAD'
  homepage 'http://librecad.org/'
  license :gpl

  app 'LibreCAD.app'
end
