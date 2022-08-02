cask "banksiagui" do
  version "0.54a"
  sha256 "1bd1b1526f0431b086f0480d4e10887601c6b4a514e954fb0c46971150286970"

  url "https://banksiagui.com/dl/BanksiaGui-#{version}-mac.zip"
  name "BanksiaGui"
  desc "Chess GUI"
  homepage "https://banksiagui.com/"

  # The homepage uses a WordPress anti-crawler protection plugin which
  # returns a 403 error when trying to run livecheck
  livecheck do
    skip "Version information can't be retrieved due to anti-crawler protection"
  end

  app "BanksiaGui.app"

  zap trash: [
    "~/Library/Preferences/softgaroo.banksia.plist",
    "~/Library/Saved Application State/softgaroo.banksia.savedState",
  ]
end
