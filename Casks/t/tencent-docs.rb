cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.9.6"
  sha256 arm:   "c7a30997594965bf6c1f3c7a8cab541477c6098a9c18e2df8e4e230abbba259a",
         intel: "ac3a82efe992544e8033b75961b33697e8130f93959034d1a34b4494c52ed32e"

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
