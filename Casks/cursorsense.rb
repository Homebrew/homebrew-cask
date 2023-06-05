cask "cursorsense" do
  version "2.3.2"
  sha256 "b0c78b892659d673cb5d529564190d51aa0562ebfe0e2b7d72cea64b130fc41a"

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
