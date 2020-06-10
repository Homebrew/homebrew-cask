cask 'sweet-home3d' do
  version '6.3'
  sha256 '15dc11dac6ee452b953196c0a74c2e1e5349b0446272d0321f73b3e4cdcac448'

  # sourceforge.net/sweethome3d/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
