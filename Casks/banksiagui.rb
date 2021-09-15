cask "banksiagui" do
  version "0.50"
  sha256 "362fb7b076980d08b43079814c67122de5db8bbbc7a4a6d53d68cf4ee9ae7ff1"

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
