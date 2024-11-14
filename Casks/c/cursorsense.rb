cask "cursorsense" do
  version "2.4.1"
  sha256 "7e48bb55ce5b486d0927b05a0596d86e026ffa57c6bd73111566c5ed28035fa3"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  name "CursorSense"
  desc "Adjusts cursor acceleration and sensitivity"
  homepage "https://plentycom.jp/en/cursorsense/"

  livecheck do
    url "https://plentycom.jp/en/cursorsense/download.php"
    regex(%r{href=.*?/CursorSensev?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "CursorSense.app"

  zap trash: [
    "~/Library/Application Support/SteerMouse & CursorSense",
    "~/Library/HTTPStorages/jp.plentycom.CursorSense.app",
    "~/Library/LaunchAgents/jp.plentycom.CursorSense.boa.plist",
    "~/Library/Preferences/jp.plentycom.CursorSense.app.plist",
  ]
end
