cask "gitkraken" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "10.6.3"
  sha256 arm:   "3471b3ea1f626dbec4a1502cd8a8e8172fdad3e93674c8be84e6d613528c7aa6",
         intel: "fb77f1a687cf6ef4fea27a99cbb28176c909bedcb82230a86a5a65f9d5e21a42"

  url "https://release.axocdn.com/#{arch}/GitKraken-v#{version}.zip",
      verified: "release.axocdn.com/"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://release.axocdn.com/#{arch}/RELEASES?v=0.0.0&darwin=999"
    strategy :json do |json|
      json["name"]
    end
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
