cask "gitkraken" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "12.5.0"
  sha256 arm:   "406e38d8b1937a58ccc461f7b65e69e2a4a7da4653105bb5c5183e94d40d8bc6",
         intel: "e99e0e8381967b69efc8d0963b6a6205c2f2bde573a4537f58c1e9f64fe75d18"

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
