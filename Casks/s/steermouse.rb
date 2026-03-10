cask "steermouse" do
  version "5.7.8"
  sha256 "17ad7a5c8b711a1873e4c57da49b45f9215796f9fefebfde84b0ea4aa6680a03"

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
