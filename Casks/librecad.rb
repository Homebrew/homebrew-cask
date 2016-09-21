cask 'librecad' do
  version '2.1.2'
  sha256 "b24e842629fa79b8404b2b09eddb9a6d3bcd6fa99b12bfad6ac8a39df38cb5fc"

  # sourceforge.net/librecad was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/librecad/OSX/2.1/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg"
  appcast 'https://sourceforge.net/projects/librecad/rss?path=/OSX',
          checkpoint: '0d3b16381b5b2eda956c0cec675668ebb09830ed3f2682a88a829b2bfb092ce3'
  name 'LibreCAD'
  homepage 'http://librecad.org/'
  license :gpl

  app 'LibreCAD.app'
end
