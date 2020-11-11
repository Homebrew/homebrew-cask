cask "photosweeper-x" do
  version "3.8.1"
  sha256 "962675a1e8bd9ea69aaaa1d8f6a5b96ce124be10148b4f970cc3abdb7393c252"

  url "https://overmacs.com/downloads/PhotoSweeper_X.dmg"
  appcast "https://overmacs.com/feeds/photosweeper_update.xml"
  name "PhotoSweeper X"
  desc "Tool to eliminate similar or duplicate photos"
  homepage "https://overmacs.com/"

  depends_on macos: ">= :sierra"

  app "PhotoSweeper X.app"

  zap trash: "~/Library/Preferences/com.overmacs.photosweeperpaddle.plist"
end
