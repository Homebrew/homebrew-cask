cask "banksiagui" do
  version "0.44"
  sha256 "8fecc60641cc97cc8e875a868a0bcaf851b686678807a5924fffb6826112be26"

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
