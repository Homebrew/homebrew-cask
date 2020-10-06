cask "steermouse" do
  version "5.5.2"
  sha256 "37f41af70f3d14bc117e11a0a5cad2e77d8e224b35f35b1608d1cf24840b61fe"

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
