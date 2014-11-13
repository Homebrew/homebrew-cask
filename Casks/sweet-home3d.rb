cask :v1 => 'sweet-home3d' do
  version '4.5'
  sha256 'f1d341046fbf066d92cc625b44bb201e905017c72e9755151587a01539f5242b'

  url "https://downloads.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  homepage 'http://www.sweethome3d.com/'
  license :oss

  app 'Sweet Home 3D.app'
end
