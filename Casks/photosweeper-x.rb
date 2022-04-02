cask "photosweeper-x" do
  version "4.3.0,4300"
  sha256 :no_check

  url "https://overmacs.com/downloads/PhotoSweeper_X.dmg"
  name "PhotoSweeper X"
  desc "Tool to eliminate similar or duplicate photos"
  homepage "https://overmacs.com/"

  livecheck do
    url "https://overmacs.com/feeds/photosweeper_update.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "PhotoSweeper X.app"

  zap trash: "~/Library/Preferences/com.overmacs.photosweeperpaddle.plist"
end
