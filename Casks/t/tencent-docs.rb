cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.5.5"
  sha256 arm:   "780c9cea920887f6987e1c0a8bc517e5cd3582b70d52292429b5bce19e09716d",
         intel: "22717c82877bb41821ff9128fa52f852f29613a3bebab528bba7276aa7900268"

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
