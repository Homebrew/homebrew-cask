cask 'librecad' do
  version '2.1.3'
  sha256 'e17f74be117c2cabbc9c5844ae459dd1d1e6f94b17d09f0e809ef23b936a8952'

  # github.com/LibreCAD/LibreCAD was verified as official when first introduced to the cask
  url "https://github.com/LibreCAD/LibreCAD/releases/download/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/LibreCAD/LibreCAD/releases.atom',
          checkpoint: '490f293425e95a3ca9833b74cf2034bb98c434d78b13e0db2da77e2f4eb9ccf0'
  name 'LibreCAD'
  homepage 'http://librecad.org/cms/home.html'

  app 'LibreCAD.app'
end
