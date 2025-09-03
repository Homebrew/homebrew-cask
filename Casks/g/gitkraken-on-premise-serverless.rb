cask "gitkraken-on-premise-serverless" do
  arch arm: "arm64", intel: "x64"

  version "11.4.0"
  sha256 arm:   "0b3a3ff54383d74cb847e99d395f69c67b0b2010bbe71fbd6384f5a06df493be",
         intel: "0802e4385b11b95cff0aa55eb5233aa51f62cb7df24268f358051a4d19c17260"

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
