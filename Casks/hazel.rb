cask "hazel" do
  version "5.0.5"
  sha256 "5f0bb95b2c1b6d4ef4eea8b93c95483938c88c25da0649e8d0dafcf7b0221a03"

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
