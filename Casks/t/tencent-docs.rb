cask "tencent-docs" do
  version "3.10.15"
  sha256 "94705039e8882f5d63ae01150b0b55f1adb068466e48b5ffbc84b3f6eb13d90b"

  url "https://desktop.docs.qq.com/update/release/#{version}/TencentDocs#{version}.30002.zip"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    url "https://docs.qq.com/api/packageupgrade/update_manual"
    strategy :json do |json|
      update_info = json.dig("result", "update_info")
      next if update_info.blank?

      update_json = Homebrew::Livecheck::Strategy::Json.parse_json(update_info)
      update_json["version"]
    end
  end

  auto_updates true

  app "TencentDocs.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/TencentDocs_*",
    "~/Library/Application Support/CrashReporter/TencentDocs_*",
    "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist",
    "~/Library/Saved Application State/com.tencent.mac.tdappdesktop.savedState",
  ]
end
