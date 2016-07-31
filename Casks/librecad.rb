cask 'librecad' do
  version '2.0.10'
  sha256 '53735cc765cc8e89f28c19d1b5696ccda985e7ad6196e3fb504ab6297c15518a'

  # sourceforge.net/project/librecad was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/librecad/OSX/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg"
  appcast 'https://sourceforge.net/projects/librecad/rss',
          checkpoint: '41957be43b8dc8bb35cafd2edad244c47afb485f0d0d915c30beb4b5adfcfab6'
  name 'LibreCAD'
  homepage 'http://librecad.org/'
  license :gpl

  app 'LibreCAD.app'
end
