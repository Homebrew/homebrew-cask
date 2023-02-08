cask "steermouse" do
  version "5.6.7"
  sha256 "c939f1fc38bbbc894a7aa45a56cc9a400d7c5ef88f1ecc0d26a08b1120525e4c"

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name "SteerMouse"
  desc "Customize mouse buttons, wheels and cursor speed"
  homepage "https://plentycom.jp/en/steermouse/"

  livecheck do
    url "https://plentycom.jp/en/steermouse/download.php"
    regex(/href=.*?SteerMouse[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  prefpane "SteerMouse.prefPane"

  zap trash: "~/Library/Application Support/SteerMouse & CursorSense/Device.smsetting",
      rmdir: [
        "~/Library/Application Support/SteerMouse & CursorSense/Device Definitions/",
        "~/Library/Application Support/SteerMouse & CursorSense/",
      ]
end
