cask "sweet-home3d" do
  version "6.5.2"
  sha256 "112282a390d02df60debbc737e8fe7a729fb172c87b0aac4547aeda01cdff9fb"

  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg",
      verified: "sourceforge.net/sweethome3d/"
  name "Sweet Home 3D"
  desc "Interior design application"
  homepage "http://www.sweethome3d.com/"

  app "Sweet Home 3D.app"
end
