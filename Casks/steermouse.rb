cask "steermouse" do
  version "5.5.3"
  sha256 "0283fc6ff7769c332fe2418992ebbf1dc76207666190dadc94a44d38ed857eec"

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast "https://plentycom.jp/en/steermouse/download.php"
  name "SteerMouse"
  homepage "https://plentycom.jp/en/steermouse/"

  prefpane "SteerMouse.prefPane"

  zap trash: "~/Library/Application Support/SteerMouse & CursorSense/Device.smsetting",
      rmdir: [
        "~/Library/Application Support/SteerMouse & CursorSense/Device Definitions/",
        "~/Library/Application Support/SteerMouse & CursorSense/",
      ]
end
