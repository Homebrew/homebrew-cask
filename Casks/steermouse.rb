cask "steermouse" do
  version "5.6.5"
  sha256 "5380d684a5c38aec0fcc887a5ef1e0994603b07ecb95eb345f4e8754b904410f"

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
