cask "gitkraken" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "10.4.0"
  sha256 arm:   "ec8f90d27809145b6ca57f65be3743e80fd0e444332a3c8d49e5c1c69648d462",
         intel: "9d38074b4d5d56939820f8e9e41385456332e84509e1a7e7d95a076eecdda773"

  url "https://release.axocdn.com/#{arch}/GitKraken-v#{version}.zip",
      verified: "release.axocdn.com/"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://help.gitkraken.com/gitkraken-desktop/current/"
    regex(/Version\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  conflicts_with cask: "gitkraken-on-premise-serverless"
  depends_on macos: ">= :el_capitan"

  app "GitKraken.app"

  uninstall quit: "com.axosoft.gitkraken"

  zap trash: [
    "~/.gitkraken",
    "~/Library/Application Support/com.axosoft.gitkraken.ShipIt",
    "~/Library/Application Support/GitKraken",
    "~/Library/Caches/com.axosoft.gitkraken",
    "~/Library/Caches/com.axosoft.gitkraken.ShipIt",
    "~/Library/Caches/GitKraken",
    "~/Library/Cookies/com.axosoft.gitkraken.binarycookies",
    "~/Library/HTTPStorages/com.axosoft.gitkraken",
    "~/Library/Preferences/com.axosoft.gitkraken.helper.plist",
    "~/Library/Preferences/com.axosoft.gitkraken.plist",
    "~/Library/Saved Application State/com.axosoft.gitkraken.savedState",
  ]
end
