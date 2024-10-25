cask "hazel" do
  version "6.0.1"
  sha256 "4bfe414cc4f49aaf779375b2c5919cb151e575fa3d1da672338c65a9b1203a90"

  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg",
      verified: "s3.amazonaws.com/Noodlesoft/"
  name "Hazel"
  desc "Automated organisation"
  homepage "https://www.noodlesoft.com/"

  livecheck do
    url "https://www.noodlesoft.com/Products/Hazel/generate-appcast.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Hazel.app"

  uninstall quit: "86Z3GCJ4MF.com.noodlesoft.HazelHelper"

  zap trash: [
    "~/Library/Application Support/Hazel",
    "~/Library/Caches/com.noodlesoft.HazelHelper",
    "~/Library/Logs/Hazel",
    "~/Library/Preferences/86Z3GCJ4MF.com.noodlesoft.HazelHelper.plist",
    "~/Library/Preferences/com.noodlesoft.Hazel.plist",
    "~/Library/Preferences/com.noodlesoft.HazelHelper.plist",
    "~/Library/Saved Application State/com.noodlesoft.Hazel.savedState",
  ]
end
