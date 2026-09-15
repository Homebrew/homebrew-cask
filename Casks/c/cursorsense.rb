cask "cursorsense" do
  version "2.5"
  sha256 "f4c13fdd02d33826867edbed605992e5b8de3de87057164d9121f936fffef3a0"

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
