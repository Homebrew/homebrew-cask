cask "steermouse" do
  version "5.5.5"
  sha256 "9aa09144b17ec0199a9ea2aa4ad000abc6839aba02a227fcfcce3f04a61a1af3"

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
