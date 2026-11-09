cask "cursorsense" do
  version "2.5.1"
  sha256 "9a62a93ddadfa7331276bad4f261c92d839aa069bedac8f59ad3769b36282d8d"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  name "CursorSense"
  desc "Adjusts cursor acceleration and sensitivity"
  homepage "https://plentycom.jp/en/cursorsense/"

  livecheck do
    url "https://plentycom.jp/en/cursorsense/download.php"
    regex(%r{href=.*?/CursorSensev?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: :monterey

  app "CursorSense.app"

  uninstall launchctl: "jp.plentycom.CursorSense.boa"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.plentycom.cursorsense.boa.sfl*",
    "~/Library/Application Support/SteerMouse & CursorSense",
    "~/Library/Caches/jp.plentycom.CursorSense.app",
    "~/Library/HTTPStorages/jp.plentycom.CursorSense.app",
    "~/Library/LaunchAgents/jp.plentycom.CursorSense.boa.plist",
    "~/Library/Preferences/jp.plentycom.CursorSense.app.plist",
  ]
end
