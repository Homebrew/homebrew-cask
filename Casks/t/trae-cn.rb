cask "trae-cn" do
  arch arm: "arm64", intel: "x64"

  version "1.0.8278"
  sha256 arm:   "b7105991c21ffbe6b6fdc5486671a6f619e78b0b05e2f4c90ffbedc67696f281",
         intel: "94249c805660217af4fa92aa4167f3c51621f06e2afb0a51b5d2f46c160e87f0"

  url "https://lf-cdn.trae.com.cn/obj/trae-com-cn/pkg/app/releases/stable/#{version}/darwin/Trae%20CN-darwin-#{arch}.dmg"
  name "Trae CN"
  desc "Adaptive AI IDE"
  homepage "https://www.trae.com.cn/"

  livecheck do
    url "https://api.trae.ai/icube/api/v1/native/version/trae/cn/latest"
    strategy :json do |json|
      json.dig("data", "manifest", "darwin", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trae CN.app"

  uninstall launchctl: "cn.trae.ShipIt",
            quit:      "cn.trae.app"

  zap trash: [
    "~/.trae-cn",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cn.trae.app.sfl*",
    "~/Library/Application Support/Trae CN",
    "~/Library/Caches/cn.trae.app",
    "~/Library/Caches/cn.trae.ShipIt",
    "~/Library/HTTPStorages/cn.trae.app",
    "~/Library/Preferences/ByHost/cn.trae.ShipIt.*.plist",
    "~/Library/Preferences/cn.trae.app.helper.plist",
    "~/Library/Preferences/cn.trae.app.plist",
    "~/Library/Saved Application State/cn.trae.app.savedState",
  ]
end
