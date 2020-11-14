cask "photosweeper-x" do
  version "3.8.2"
  sha256 "855c83f8eaefd698106b723c14860aa44423a68710996094b977d2d8023482a2"

  url "https://overmacs.com/downloads/PhotoSweeper_X.dmg"
  appcast "https://overmacs.com/feeds/photosweeper_update.xml"
  name "PhotoSweeper X"
  desc "Tool to eliminate similar or duplicate photos"
  homepage "https://overmacs.com/"

  depends_on macos: ">= :sierra"

  app "PhotoSweeper X.app"

  zap trash: "~/Library/Preferences/com.overmacs.photosweeperpaddle.plist"
end
