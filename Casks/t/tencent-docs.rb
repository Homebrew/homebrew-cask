cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.8.10"
  sha256 arm:   "2d493cd30e7ce6f3987f2683505f35a602f279a41744623e027d8cf0dcec34d3",
         intel: "fa2bb7276e5292c5a4088fa190a28794eb39bed74a0044ab4ec898548fae142f"

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
