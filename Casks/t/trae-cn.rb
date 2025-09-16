cask "trae-cn" do
  arch arm: "arm64", intel: "x64"

  version "1.0.19957"
  sha256 arm:   "d6ea8aa91c742a6ede7c583d1e21fdc753dfa537d05be44c3b7d2af319374b7e",
         intel: "ebc91a07941a7ffb5ff68fbd11e770a678b343d3f340b738444b66259a4a611b"

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
