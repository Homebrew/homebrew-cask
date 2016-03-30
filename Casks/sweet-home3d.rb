cask 'sweet-home3d' do
  version '5.2'
  sha256 'd9450ac52ead59cd24a69616aa7d613a568d841295f56bee3a993c4ed066e2da'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'
  license :gpl

  app 'Sweet Home 3D.app'
end
