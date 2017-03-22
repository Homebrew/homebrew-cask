cask 'librecad' do
  version '2.1.3'
  sha256 'e17f74be117c2cabbc9c5844ae459dd1d1e6f94b17d09f0e809ef23b936a8952'

  # sourceforge.net/librecad was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/librecad/OSX/#{version.major_minor}/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg"
  appcast 'https://sourceforge.net/projects/librecad/rss?path=/OSX',
          checkpoint: '2d0cdc212c76bb751ee31bf6a3db0a4a34968a78ff7dd6d9870ead55d15e88f2'
  name 'LibreCAD'
  homepage 'http://librecad.org/cms/home.html'

  app 'LibreCAD.app'
end
