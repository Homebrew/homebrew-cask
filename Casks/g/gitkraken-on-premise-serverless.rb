cask "gitkraken-on-premise-serverless" do
  arch arm: "arm64", intel: "x64"

  version "12.2.1"
  sha256 arm:   "26cc5a53c89344e4ae8a0bd594e60b7d4a58a5a5aeac729316e7cf56173b2591",
         intel: "1d38fb13c53ebae7de264c834db4e4780e5db76ce8a1a662c39a3422e31a05c9"

  url "https://api.gitkraken.dev/releases/standalone/production/darwin/#{arch}/#{version}/GitKraken-v#{version}.zip",
      verified: "api.gitkraken.dev/releases/standalone/production/"
  name "GitKraken Serverless"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/git-client/on-premise"

  livecheck do
    url "https://www.gitkraken.com/download-on-premise-serverless"
    regex(/Latest\srelease:\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  conflicts_with cask: "gitkraken"
  depends_on :macos

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
