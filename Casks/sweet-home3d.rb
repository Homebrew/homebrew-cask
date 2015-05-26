cask :v1 => 'sweet-home3d' do
  version '4.6'
  sha256 'd784a9c62ce7115634348e7eeddff1e2fa54280539b022060abd28de18170d27'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'
  license :gpl

  app 'Sweet Home 3D.app'
end
