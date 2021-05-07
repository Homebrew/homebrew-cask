cask "banksiagui" do
  version "0.43"
  sha256 "a25685b3602696c2d6fd4890a7422d2ba5e570d814af493a710791e41ccad5ae"

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
