cask "hazel" do
  version "5.0.3"
  sha256 "89f87f1086c5cebe83ae80a3326c91fa9d71e368dc7843ce5c2c9122ab557471"

  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg",
      verified: "s3.amazonaws.com/Noodlesoft/"
  name "Hazel"
  desc "Automated organization"
  homepage "https://www.noodlesoft.com/"

  livecheck do
    url "https://www.noodlesoft.com/Products/Hazel/generate-appcast.php"
    strategy :sparkle
  end

  auto_updates true

  app "Hazel.app"

  uninstall quit: "86Z3GCJ4MF.com.noodlesoft.HazelHelper"

  zap trash: [
    "~/Library/Logs/Hazel",
    "~/Library/Application Support/Hazel",
    "~/Library/Caches/com.noodlesoft.HazelHelper",
    "~/Library/Preferences/com.noodlesoft.Hazel.plist",
    "~/Library/Preferences/com.noodlesoft.HazelHelper.plist",
    "~/Library/Preferences/86Z3GCJ4MF.com.noodlesoft.HazelHelper.plist",
    "~/Library/Saved Application State/com.noodlesoft.Hazel.savedState",
    "/Applications/Hazel.app/Contents/Library/LoginItems/86Z3GCJ4MF.com.noodlesoft.HazelHelper.app",
  ]
end
