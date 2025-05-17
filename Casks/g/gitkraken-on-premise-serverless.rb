cask "gitkraken-on-premise-serverless" do
  arch arm: "arm64", intel: "x64"

  version "11.1.1"
  sha256 arm:   "e56f196fca86c101d9238ad4661376c2d27c7b7f484ff060f2f91012df0e58e8",
         intel: "da56a573d8085ddafc2182f19ba6db9225fab337a7d38249ef4bed9bb462d0c1"

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
