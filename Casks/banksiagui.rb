cask "banksiagui" do
  version "0.53"
  sha256 "5edf3c0796072fd2e7b04198ed6c018f4012e5dc0b7fcde6f40093f0a3952a83"

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
