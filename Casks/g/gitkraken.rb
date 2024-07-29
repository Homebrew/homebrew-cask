cask "gitkraken" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "10.1.1"
  sha256 arm:   "d5a102fb7dbb6828115227e887506e392fa6a92a4299b906053b71b46f330bfb",
         intel: "74861bf0a9f7019d99e8b48aa4b359e50f338939d9fdd393bf17425c16a55ec0"

  url "https://release.axocdn.com/#{arch}/GitKraken-v#{version}.zip",
      verified: "release.axocdn.com/"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://help.gitkraken.com/gitkraken-client/current/"
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
