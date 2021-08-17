cask "banksiagui" do
  version "0.46"
  sha256 "f6baa89895329076c7309841fcd4cae5ff17fdf48cce07d300991e95cfad7b07"

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
