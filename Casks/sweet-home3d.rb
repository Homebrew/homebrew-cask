cask :v1 => 'sweet-home3d' do
  version '5.1'
  sha256 'b28ebb6816181561846a1f9dd828036f4830a1206c35358979fe3308a1f6a486'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'
  license :gpl

  app 'Sweet Home 3D.app'
end
