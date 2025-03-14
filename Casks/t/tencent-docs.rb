cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.9.10"
  sha256 arm:   "472c86f09c4329cfe9f37f3d5e601f2ef301cfe748daba1098e27e70f1f763a2",
         intel: "629187b982b72f907c8c81f11b8452a6f407a63df89a0cd77149d1500a654c80"

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
