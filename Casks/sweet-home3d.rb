cask 'sweet-home3d' do
  version '6.4'
  sha256 '39f1c2a97dcd5503e80e3bf1d3c0c5f3b70ada5504dc5377438bb41e0a910544'

  # sourceforge.net/sweethome3d/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
