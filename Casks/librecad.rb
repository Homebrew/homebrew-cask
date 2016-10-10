cask 'librecad' do
  version '2.1.2'
  sha256 'b24e842629fa79b8404b2b09eddb9a6d3bcd6fa99b12bfad6ac8a39df38cb5fc'

  # sourceforge.net/librecad was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/librecad/OSX/#{version.major_minor}/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg"
  appcast 'https://sourceforge.net/projects/librecad/rss?path=/OSX',
          checkpoint: 'a2463268ae3a532744db027bcdd154bfa4390dada1679dbea42d426e9d9b39cc'
  name 'LibreCAD'
  homepage 'http://librecad.org/'

  app 'LibreCAD.app'
end
