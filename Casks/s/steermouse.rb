cask "steermouse" do
  version "5.7.6"
  sha256 "72ad39dd73bf67cc4f19b29271c03987da95b6335f469f2c963804391196b3a5"

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name "SteerMouse"
  desc "Customise mouse buttons, wheels and cursor speed"
  homepage "https://plentycom.jp/en/steermouse/"

  livecheck do
    url "https://plentycom.jp/en/steermouse/download.php"
    regex(/href=.*?SteerMouse[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "SteerMouse.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.plentycom.boa.steermouse.sfl*",
    "~/Library/Application Support/SteerMouse & CursorSense",
    "~/Library/Caches/jp.plentycom.app.SteerMouse",
    "~/Library/HTTPStorages/jp.plentycom.app.SteerMouse",
    "~/Library/LaunchAgents/jp.plentycom.boa.SteerMouse.plist",
    "~/Library/Preferences/jp.plentycom.app.SteerMouse.plist",
  ]
end
