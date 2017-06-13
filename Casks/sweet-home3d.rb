cask 'sweet-home3d' do
  version '5.4'
  sha256 'fb3d2561684daabaee51bc1805e24a451ecf06ffd8367be7c19758bf3ffcff3b'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D',
          checkpoint: '2b33dbd17e85f76c0d053a6c105ce41291c81d04b040e0c796d3a68a72cec705'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
