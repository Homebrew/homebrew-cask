cask "gitkraken" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "12.0.0"
  sha256 arm:   "b38d1f6551a4250a29967f1442f659e0db82bef8c9abbac9afaeb658a0ed23fb",
         intel: "9d6ac545c97304f8a7ba8be295a0fbbb369c42dbf4f5124f00ac957915058234"

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
