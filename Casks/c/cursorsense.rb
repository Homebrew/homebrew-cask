cask "cursorsense" do
  version "2.4.3"
  sha256 "431f92df25412ef68c1471d85ee509beb9ca378939ce46ec9f10bb778ee0237b"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  name "CursorSense"
  desc "Adjusts cursor acceleration and sensitivity"
  homepage "https://plentycom.jp/en/cursorsense/"

  livecheck do
    url "https://plentycom.jp/en/cursorsense/download.php"
    regex(%r{href=.*?/CursorSensev?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "CursorSense.app"

  zap trash: [
    "~/Library/Application Support/SteerMouse & CursorSense",
    "~/Library/HTTPStorages/jp.plentycom.CursorSense.app",
    "~/Library/LaunchAgents/jp.plentycom.CursorSense.boa.plist",
    "~/Library/Preferences/jp.plentycom.CursorSense.app.plist",
  ]
end
