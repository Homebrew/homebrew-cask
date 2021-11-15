cask "sdm" do
  version "15.44.0"
  sha256 :no_check

  url "https://app.strongdm.com/downloads/client/darwin"
  name "sdm"
  desc "Strongdm client"
  homepage "https://www.strongdm.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SDM.app"

  zap trash: [
    "~/Library/Application Support/SDM",
    "~/Library/Caches/com.electron.sdm",
    "~/Library/Caches/com.electron.sdm.ShipIt",
    "~/Library/Preferences/com.electron.sdm.plist",
    "~/Library/Saved Application State/com.electron.sdm.savedState",
    "~/.sdm",
  ]
end
