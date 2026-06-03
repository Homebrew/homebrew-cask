cask "gitkraken" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "12.1.2"
  sha256 arm:   "6c77b581663bf11180ebd2618b4999b0d75f30b61d8a0f87ab97f57c356ee84e",
         intel: "485b9933864ca691259c9fd3fbcf0f03c2ac0da55e8fe52529e38d823f0183c4"

  url "https://api.gitkraken.dev/releases/production/darwin/#{arch}/#{version}/GitKraken-v#{version}.zip",
      verified: "api.gitkraken.dev/releases/production/"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://release.gitkraken.com/darwin#{livecheck_arch}/RELEASES?v=0.0.0&darwin=999"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: "gitkraken-on-premise-serverless"
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
