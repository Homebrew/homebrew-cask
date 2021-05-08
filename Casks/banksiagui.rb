cask "banksiagui" do
  version "0.42"
  sha256 "5eda92b5899191835d9d462fcd356d31cdd94f90cc9ccb4070d4ad07057c69a5"

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
