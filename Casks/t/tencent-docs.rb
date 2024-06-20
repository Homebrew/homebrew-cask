cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.5.4"
  sha256 arm:   "596065c0a03a6eac64c6cc5cb029cd57456ec34377fe86dbce895804130b070e",
         intel: "597be6ba46dd655a090befbeecb5b9b4184af8b79bcd679ebd8fb13ba1a13ef3"

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
