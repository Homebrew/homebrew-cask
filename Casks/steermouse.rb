cask "steermouse" do
  version "5.5.1"
  sha256 "985ad80baa7d40248d2d66eda436f88580e3a017ac112a06d29eb6f098982c0f"

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
