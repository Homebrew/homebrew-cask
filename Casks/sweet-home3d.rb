cask 'sweet-home3d' do
  version '5.5'
  sha256 'd63636a0e83f5959c2aaabf85bc17057a157ca08dca7b67417a9eb92700ff822'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D',
          checkpoint: '31ceb4539b9ef405f00bc7330bbe489ab42a6ab6c529f945c95634e1376e0fa9'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
