cask "sweet-home3d" do
  version "7.5"
  sha256 "1533f3106842b66da782639626d371797fd52ab8406f3a54017f8f44dd215e1a"

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
