cask "photosweeper-x" do
  version "3.9.2"
  sha256 "8ee6a7f08a9c10ef015e41d8e09f454a71c9783da68afdc87c1d42c269f3b722"

  url "https://overmacs.com/downloads/PhotoSweeper_X.dmg"
  appcast "https://overmacs.com/feeds/photosweeper_update.xml"
  name "PhotoSweeper X"
  desc "Tool to eliminate similar or duplicate photos"
  homepage "https://overmacs.com/"

  depends_on macos: ">= :sierra"

  app "PhotoSweeper X.app"

  zap trash: "~/Library/Preferences/com.overmacs.photosweeperpaddle.plist"
end
