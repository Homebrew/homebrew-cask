cask "gitkraken-on-premise-serverless" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "10.2.0"
  sha256 arm:   "f976a465accb823226d5c9d53c227d34d3e666ee1689a3b48c4f5355efaa74e6",
         intel: "12f0f99e0aa845ec046e23e636ae2c8a92003d48f884ebeec4c31ff8f3e98f82"

  url "https://release.axocdn.com/#{arch}-standalone/GitKraken-v#{version}.zip",
      verified: "release.axocdn.com/"
  name "GitKraken Serverless"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/git-client/on-premise"

  livecheck do
    url "https://www.gitkraken.com/download-on-premise-serverless"
    regex(/Latest\srelease:\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  conflicts_with cask: "gitkraken"
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
