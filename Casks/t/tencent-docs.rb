cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "5932dd7ea637371a48643e4434e9cc0a58fa9e58dfb314f8a7f9474d4ae36431",
         intel: "6adaf4f4ae6c4ad3e4a4a623f2e0c8e6dbf96fffe1ed5cbe4b76b5894acc98d2"

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
