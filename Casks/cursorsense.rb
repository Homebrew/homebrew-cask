cask "cursorsense" do
  version "2.2.2"
  sha256 "7faf21c60e5b73312e31fcd503ae71e6be5724dc3d0eaf7746483be0cd270778"

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
