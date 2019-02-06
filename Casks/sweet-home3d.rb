cask 'sweet-home3d' do
  version '6.1.2'
  sha256 '32dd2d8c9d5358c09eca89f59b06e0238373127b0d4f86d54a079e41703fb9ad'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
