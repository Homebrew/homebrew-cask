cask "cursorsense" do
  version "2.2.2"
  sha256 "2e990f3b865bb134463e7dd6b8a02de6a5e9c12a049b1e577ce48a61e9d5010d"

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
