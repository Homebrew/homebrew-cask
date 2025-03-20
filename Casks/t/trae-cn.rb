cask "trae-cn" do
  arch arm: "arm64", intel: "x64"

  version "1.0.9697"
  sha256 arm:   "968755d494013cbec83495680595efd4bfa0562025e974cd4f8eacc6d4fe9ef5",
         intel: "82ada470ed0666823a1926d25c264b6cd86dd9ff29020a9f448ea1f7622ee82b"

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
