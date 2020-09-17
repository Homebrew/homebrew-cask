cask "amorphousdiskmark" do
  version :latest
  sha256 :no_check

  url "https://katsurashareware.com/dl/AmorphousDiskMark.zip"
  name "AmorphousDiskMark"
  desc "App to measure storage read/write performance"
  homepage "https://katsurashareware.com/pgs/adm.html"

  app "AmorphousDiskMark.app"

  zap trash: [
    "~/Library/Preferences/com.katsurashareware.AmorphousDiskMark.plist",
    "~/Library/Saved Application State/com.katsurashareware.AmorphousDiskMark.savedState",
  ]
end
