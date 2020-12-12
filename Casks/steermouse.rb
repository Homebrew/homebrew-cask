cask "steermouse" do
  version "5.5.4"
  sha256 "c66465072162a7a2e9ee41cfe41b9538db83e4bcd20b7d066df5fa714083d80c"

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
