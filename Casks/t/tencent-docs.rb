cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.8.2"
  sha256 arm:   "6c11b62a0272c59c99f5252b888f7e7c04e357ac67ddf0a04b4e857ce338ac0f",
         intel: "0d47ef1d840d4ddbac4f52ba7229e81da79bf29012a61b82bfb6ffd2b0c6fdb9"

  url "https://desktop.docs.qq.com/Installer/30001/#{version}/TencentDocs-#{arch}.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    url "https://docs.qq.com/api/package/update"
    regex(/"version.*?(\d+(?:\.\d+)+)[\\ "]/i)
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
