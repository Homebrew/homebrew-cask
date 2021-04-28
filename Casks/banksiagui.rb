cask "banksiagui" do
  version "0.38"
  sha256 "97d79126c90646f73f2fe4b11d65817cba10cd24731ec2c5980a997fb40a8c4c"

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
