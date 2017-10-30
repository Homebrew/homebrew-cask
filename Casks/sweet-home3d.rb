cask 'sweet-home3d' do
  version '5.6'
  sha256 '73eb054e9039a38e7ed32bbb66ba3581831dfd69a07faa9dc8d2765937fbac68'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D',
          checkpoint: '71d73604ae3f2d9c88a242733081bc6cb0fc4e83f7040fd055f3b40651995ab0'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
