cask "sweet-home3d" do
  version "7.2"
  sha256 "d6e63bab36d9259675036d8f8e2a03fd81f32657d35d60a3f566f3f1e8470b65"

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
