cask "gitkraken-on-premise-serverless" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "10.6.3"
  sha256 arm:   "91eaabea75224a26029072862fb3532ff85e952c4b361e2faa5883c3cc41194d",
         intel: "18a62afd4881253f0fa431af191c481f358c1ee84f1275f9400ba6ae27d5e12d"

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
