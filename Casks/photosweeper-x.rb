cask "photosweeper-x" do
  version "3.8.0"
  sha256 "8a8a807533323bc84d45c36feb9b44f986d038297dda2d4200a65d62fa69ed6d"

  url "https://overmacs.com/downloads/PhotoSweeper_X.dmg"
  appcast "https://overmacs.com/feeds/photosweeper_update.xml"
  name "PhotoSweeper X"
  desc "Tool to eliminate similar or duplicate photos"
  homepage "https://overmacs.com/"

  depends_on macos: ">= :sierra"

  app "PhotoSweeper X.app"

  zap trash: "~/Library/Preferences/com.overmacs.photosweeperpaddle.plist"
end
