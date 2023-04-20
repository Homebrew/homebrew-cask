cask "banksiagui" do
  version "0.55"
  sha256 "4917730ce916905fa92b97733665f11cb88a85ab80f59bda6e48bd57fed4e210"

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
