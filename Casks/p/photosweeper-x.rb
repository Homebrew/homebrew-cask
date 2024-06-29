cask "photosweeper-x" do
  version "4.9.1"
  sha256 :no_check

  url "https://overmacs.com/downloads/PhotoSweeper_X.dmg"
  name "PhotoSweeper X"
  desc "Tool to eliminate similar or duplicate photos"
  homepage "https://overmacs.com/"

  livecheck do
    url "https://overmacs.com/feeds/photosweeper_update.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "PhotoSweeper X.app"

  zap trash: "~/Library/Preferences/com.overmacs.photosweeperpaddle.plist"
end
