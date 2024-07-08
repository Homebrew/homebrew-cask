cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.6.1"
  sha256 arm:   "0fd634b276dfc1c48c1637303ef2a36f98a7668e699bbe00df269eac63156c36",
         intel: "159ce7c5488518ab38139734673cc8704c1f984a44e3df799f9dff43b76b95d2"

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
