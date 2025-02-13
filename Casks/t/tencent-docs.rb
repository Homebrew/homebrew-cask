cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.9.7"
  sha256 arm:   "830895ef120f1c3bde12f7c58cfb3aac0c4f5518e745aa63d8b2d36dee4081ca",
         intel: "787e3accc703ee1350983f8277f5fcb83e1a52634d3bd7153b9025f3136af383"

  url "https://desktop.docs.qq.com/Installer/30001/#{version}/TencentDocs-#{arch}.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    url "https://docs.qq.com/api/package/update"
    strategy :json do |json|
      info_json = Homebrew::Livecheck::Strategy::Json.parse_json(json.dig("result", "update_info").to_s)
      info_json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TencentDocs.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/TencentDocs_*",
    "~/Library/Application Support/CrashReporter/TencentDocs_*",
    "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist",
    "~/Library/Saved Application State/com.tencent.mac.tdappdesktop.savedState",
  ]
end
