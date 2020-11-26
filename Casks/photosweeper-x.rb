cask "photosweeper-x" do
  version "3.9.1"
  sha256 "b24845e310d9b00a5630947da61a5a46c62766a7e4e5a0acf8b88fc49f3844de"

  url "https://overmacs.com/downloads/PhotoSweeper_X.dmg"
  appcast "https://overmacs.com/feeds/photosweeper_update.xml"
  name "PhotoSweeper X"
  desc "Tool to eliminate similar or duplicate photos"
  homepage "https://overmacs.com/"

  depends_on macos: ">= :sierra"

  app "PhotoSweeper X.app"

  zap trash: "~/Library/Preferences/com.overmacs.photosweeperpaddle.plist"
end
