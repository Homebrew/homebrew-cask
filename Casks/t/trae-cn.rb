cask "trae-cn" do
  arch arm: "arm64", intel: "x64"

  version "1.0.12117"
  sha256 arm:   "432cba924afb3aee2b9529125db873ff8ff353a1acc48540e7efc5711d6ed654",
         intel: "95d1220789590ead827ded452d26713637bc715eea9e62047edbd7aa6476e9c4"

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
