cask "sweet-home3d" do
  version "6.6"
  sha256 "0423fb6e7fabc8bcfd0ea8260e4de671199cba3bede827c011149a17db90a038"

  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg",
      verified: "sourceforge.net/sweethome3d/"
  name "Sweet Home 3D"
  desc "Interior design application"
  homepage "http://www.sweethome3d.com/"

  app "Sweet Home 3D.app"
end
