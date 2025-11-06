cask "trae-cn" do
  arch arm: "arm64", intel: "x64"

  version "1.0.22674"
  sha256 arm:   "d2ffda95dc1238849374f3fcf45be6fa051dfba3f1970e2b8342e3a6d8a34496",
         intel: "9303d4548572a8747c3ea3fb92a42d6f6ba017be3f84dd39bfa3285d5bb57a68"

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
  depends_on macos: ">= :big_sur"

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
