cask "cursorsense" do
  version "2.1.2"
  sha256 "393168677f5958ffef36fdf010db84fc3144a34f450497f6a04f176129ef8651"

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  appcast "https://plentycom.jp/en/cursorsense/download.php"
  name "CursorSense"
  homepage "https://plentycom.jp/en/cursorsense/"

  depends_on macos: ">= :sierra"

  prefpane "CursorSense.prefPane"
end
