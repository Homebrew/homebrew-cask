cask "sweet-home3d" do
  version "6.4.2"
  sha256 "082ce1a198b50d2cff83f508de3d91228ed37fe916f2d63b1bad3f7e1bce4282"

  # sourceforge.net/sweethome3d/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast "https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D"
  name "Sweet Home 3D"
  homepage "http://www.sweethome3d.com/"

  app "Sweet Home 3D.app"
end
