cask "sweet-home3d" do
  version "7.1"
  sha256 "444f660d754e155de310178a20a12a0fdbc07b70d00e7f2c440c5646eb7bc4f9"

  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg",
      verified: "sourceforge.net/sweethome3d/"
  name "Sweet Home 3D"
  desc "Interior design application"
  homepage "https://www.sweethome3d.com/"

  livecheck do
    url "https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D"
    regex(%r{url=.*?/SweetHome3D[._-]v?(\d+(?:\.\d+)+)-macosx\.dmg}i)
  end

  app "Sweet Home 3D.app"

  zap trash: "~/Library/Preferences/com.eteks.sweethome3d.plist"
end
