cask "macx-video" do
  version "1.5,20180622"
  sha256 :no_check

  url "https://www.videoproc.com/download/macxvideo.dmg"
  name "macXvideo"
  desc "4K video processing software"
  homepage "https://www.videoproc.com/macxvideo/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "macXvideo.app"

  zap trash: [
    "~/Library/Application Support/Digiarty",
    "~/Library/Caches/com.digiarty.macXvideo",
    "~/Library/Preferences/com.digiarty.macXvideo.plist",
    "~/Library/Saved Application State/com.digiarty.macXvideo.savedState",
  ]
end
