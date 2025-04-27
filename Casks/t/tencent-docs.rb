cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.9.15"
  sha256 arm:   "eae5818dd6e144246b5cb1e04d39b9bfd66c5db595b29ee36a63f365a95a058b",
         intel: "d016ac8be61a114aa9db7f9691828614bc603d58499439aa486074adee21b2ab"

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
