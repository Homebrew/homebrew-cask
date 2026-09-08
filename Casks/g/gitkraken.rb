cask "gitkraken" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "12.4.1"
  sha256 arm:   "c6180c11da66fc0af393ac0c2efbd81e475528feb9b06525336c07d221af7f4a",
         intel: "e5cbcf88bb97416df3f894deef38da867bbd1d59790a53ca58fc4e1fa4e657ca"

  url "https://api.gitkraken.dev/releases/production/darwin/#{arch}/#{version}/GitKraken-v#{version}.zip"
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
