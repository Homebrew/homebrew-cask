cask "sweet-home3d" do
  version "7.6.1"
  sha256 "5aa8cd3140342f825a00c0b202e75e5d34bd888c6dec05b7c00c7a13e27e4442"

  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  name "Sweet Home 3D"
  desc "Interior design application"
  homepage "https://www.sweethome3d.com/"

  livecheck do
    url "https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D"
    regex(%r{url=.*?/SweetHome3D[._-]v?(\d+(?:\.\d+)+)-macosx\.dmg}i)
  end

  depends_on :macos

  app "Sweet Home 3D.app"

  zap trash: "~/Library/Preferences/com.eteks.sweethome3d.plist"
end
