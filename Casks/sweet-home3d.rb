cask 'sweet-home3d' do
  version '6.2'
  sha256 '8a3f1267c4c690c931979e9dca7f0e7739333750256e7f9fbda940f9555a6b8a'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
