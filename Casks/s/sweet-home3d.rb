cask "sweet-home3d" do
  version "7.4"
  sha256 "b4c8aad6ac00eb610d5e6c405b8e505aab09ee7216e6bb706d774d400511f209"

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
