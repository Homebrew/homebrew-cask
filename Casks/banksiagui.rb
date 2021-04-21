cask "banksiagui" do
  version "0.39"
  sha256 "026b0e721d7ce63d6b7ecae9a687aa18bce5c2561d8fcdb9fa5158350bd3778d"

  url "https://banksiagui.com/dl/BanksiaGui-#{version}-mac.zip"
  name "BanksiaGui"
  desc "Chess GUI"
  homepage "https://banksiagui.com/"

  livecheck do
    url "https://banksiagui.com/download/"
    strategy :page_match
    regex(/BanksiaGui-(\d+(?:\.\d+)*)-mac\.zip/i)
  end

  app "BanksiaGui.app"

  zap trash: [
    "~/Library/Preferences/softgaroo.banksia.plist",
    "~/Library/Saved Application State/softgaroo.banksia.savedState",
  ]
end
