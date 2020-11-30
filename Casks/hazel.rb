cask "hazel" do
  version "5.0.2"
  sha256 "1c87c0a8ded71f9cfcd2bef2e2e4c15ee9dc997187ccfd967fd95216f60e33dc"

  # s3.amazonaws.com/Noodlesoft/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast "https://www.noodlesoft.com/Products/Hazel/generate-appcast.php"
  name "Hazel"
  desc "Automated organization"
  homepage "https://www.noodlesoft.com/"

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
