cask 'librecad' do
  version '2.0.10'
  sha256 '53735cc765cc8e89f28c19d1b5696ccda985e7ad6196e3fb504ab6297c15518a'

  # sourceforge.net/librecad was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/librecad/OSX/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg"
  appcast 'https://sourceforge.net/projects/librecad/rss?path=/OSX',
          checkpoint: '0d3b16381b5b2eda956c0cec675668ebb09830ed3f2682a88a829b2bfb092ce3'
  name 'LibreCAD'
  homepage 'http://librecad.org/'
  license :gpl

  app 'LibreCAD.app'
end
