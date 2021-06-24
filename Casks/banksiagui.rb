cask "banksiagui" do
  version "0.45"
  sha256 "005930300796a330a80d70233b53d97fca6915bbe1dc4d27597d066a8f584415"

  url "https://banksiagui.com/dl/BanksiaGui-#{version}-mac.zip"
  name "BanksiaGui"
  desc "Chess GUI"
  homepage "https://banksiagui.com/"

  livecheck do
    url "https://banksiagui.com/download/"
    regex(/BanksiaGui[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
  end

  app "BanksiaGui.app"

  zap trash: [
    "~/Library/Preferences/softgaroo.banksia.plist",
    "~/Library/Saved Application State/softgaroo.banksia.savedState",
  ]
end
