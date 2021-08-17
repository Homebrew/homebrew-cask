cask "cursorsense" do
  version "2.2.3"
  sha256 "1d6a541b8cd7527029dce16bd131fca528ad8225986822c7f28a54e6a227520a"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  name "CursorSense"
  homepage "https://plentycom.jp/en/cursorsense/"

  livecheck do
    url "https://plentycom.jp/en/cursorsense/download.php"
    strategy :page_match
    regex(%r{href=.*?/CursorSense(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  prefpane "CursorSense.prefPane"
end
