cask "steermouse" do
  version "5.5.6"
  sha256 "80f60ad3920ef7c9c31cdd793fea0427ee3a0deb12e80bf4473101d8dfd3b366"

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name "SteerMouse"
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
