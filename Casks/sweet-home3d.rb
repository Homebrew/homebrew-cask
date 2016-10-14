cask 'sweet-home3d' do
  version '5.2'
  sha256 'd9450ac52ead59cd24a69616aa7d613a568d841295f56bee3a993c4ed066e2da'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D',
          checkpoint: 'be55e729ad642b6f7886650d8c56eb653c74723052bce02ac8b6e2ec289663bb'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
