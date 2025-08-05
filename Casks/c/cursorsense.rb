cask "cursorsense" do
  version "2.4.2"
  sha256 "41aa38fb99cc677351924cbf2725cf27567916d1c9568ae77f81fdb5fc0423ae"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  name "CursorSense"
  desc "Adjusts cursor acceleration and sensitivity"
  homepage "https://plentycom.jp/en/cursorsense/"

  livecheck do
    url "https://plentycom.jp/en/cursorsense/download.php"
    regex(%r{href=.*?/CursorSensev?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "CursorSense.app"

  zap trash: [
    "~/Library/Application Support/SteerMouse & CursorSense",
    "~/Library/HTTPStorages/jp.plentycom.CursorSense.app",
    "~/Library/LaunchAgents/jp.plentycom.CursorSense.boa.plist",
    "~/Library/Preferences/jp.plentycom.CursorSense.app.plist",
  ]
end
