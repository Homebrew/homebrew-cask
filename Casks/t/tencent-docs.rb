cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.9.8"
  sha256 arm:   "057d49b455fdf689b778c5a0cc6c61e57f77a3abc1f1ee6ebca638b22efa3616",
         intel: "9beaa2e7c9ad66ee3d8e2fb03c9def8acb7f45996b71a4674d13f87fcf2edbbd"

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
