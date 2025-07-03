cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "6a13fedd51478c8e4cbab90d5097d7ee0bec2fa45efd692249755743c661fd50",
         intel: "caa9c4ed98e8d5dc908c60abc151447da3134f2de016ee9b7c6de792619e5e3f"

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
