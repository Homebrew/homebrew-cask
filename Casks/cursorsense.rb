cask "cursorsense" do
  version "2.2.1"
  sha256 "9eafdd458e84550c50cb695f4517cf28d8111f6388516a0c1e8990437abbf63c"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  appcast "https://plentycom.jp/en/cursorsense/download.php"
  name "CursorSense"
  homepage "https://plentycom.jp/en/cursorsense/"

  depends_on macos: ">= :sierra"

  prefpane "CursorSense.prefPane"
end
