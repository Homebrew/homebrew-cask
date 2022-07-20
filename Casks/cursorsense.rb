cask "cursorsense" do
  version "2.3.1"
  sha256 "7031a141f3cbb07140e145640c37ce50960f87933d53adb10b67db44333a853e"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  name "CursorSense"
  desc "Adjusts cursor acceleration and sensitivity"
  homepage "https://plentycom.jp/en/cursorsense/"

  livecheck do
    url "https://plentycom.jp/en/cursorsense/download.php"
    regex(%r{href=.*?/CursorSensev?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  prefpane "CursorSense.prefPane"
end
