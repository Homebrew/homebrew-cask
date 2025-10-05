cask "tencent-docs" do
  arch arm: "arm64", intel: "x64"

  version "3.10.1"
  sha256 arm:   "43946030f8e2f63ccb4f2d7ebc887a84bd1134ea997ece994499f29d6698b776",
         intel: "bbb13d2d970688b85a274d8a27ec8f3948e6ae68d1b75d4ab7fef00f12593490"

  url "https://desktop.docs.qq.com/Installer/30001/#{version}/TencentDocs-#{arch}.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  # Newer versions of TencentDocs use a URL that doesn't work in the cask, so
  # there doesn't appear to be any usable upstream dmg file to continue updating
  # this cask beyond the current version.
  deprecate! date: "2025-10-05", because: :unreachable

  auto_updates true

  app "TencentDocs.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/TencentDocs_*",
    "~/Library/Application Support/CrashReporter/TencentDocs_*",
    "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist",
    "~/Library/Saved Application State/com.tencent.mac.tdappdesktop.savedState",
  ]
end
