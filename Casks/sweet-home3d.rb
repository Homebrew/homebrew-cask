cask 'sweet-home3d' do
  version '5.7'
  sha256 '5440e833e771acb390bb31b6553d86869f36a9ea699be49ba5176f9851c01d09'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D',
          checkpoint: 'a4f001d6cc2e7b4acb4a610346d6a965f8d2777859f53c5f7cc474c7629ae84b'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
