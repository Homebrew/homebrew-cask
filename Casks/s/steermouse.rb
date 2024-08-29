cask "steermouse" do
  version "5.7.1"
  sha256 "493650e687269141f8f0074c63c5efe1c712c372911ded5691053a49044e6f69"

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
