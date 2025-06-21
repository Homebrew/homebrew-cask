cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.9.20"
  sha256 arm:   "8a22b31cc607b573b3f52154011b1771a833786c9fc04314452c7cdcb717c5d6",
         intel: "56c4ec613cd49dfbb7bbd271e0aa476167f297f3f5874caa99dc95d65cce8d97"

  url "https://desktop.docs.qq.com/Installer/30001/#{version}/TencentDocs-#{arch}.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    url "https://docs.qq.com/rainbow/config.v2.ConfigService/PullConfigReq", post_json: {
      pull_item: {
        app_id:  "e4099bf9-f579-4233-9a15-6625a48bcb56",
        group:   "Prod.Common.AutoUpdate",
        envName: "Default",
      },
    }
    strategy :json do |json|
      json.dig("config", "items")&.map do |item|
        yaml_string = item["key_values"]&.find { |key_value| key_value["key"] == "app.yaml" }&.dig("value")
        next if yaml_string.blank?

        yaml = Homebrew::Livecheck::Strategy::Yaml.parse_yaml(yaml_string)
        yaml.dig("channelMap", "30001")
      end
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
