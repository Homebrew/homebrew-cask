cask "macx-video" do
  version "1.5"
  sha256 "010b331fe12b6176c2a5591637ab8877a1a64d86236520ac886f97a93b971569"

  url "https://www.videoproc.com/download/macxvideo.dmg"
  name "macXvideo"
  desc "macXvideo is a free 4K video processing software"
  homepage "https://www.videoproc.com/macxvideo/"

  app "macXvideo.app"

  zap trash: [
    "~/Library/Application Support/Digiarty",
    "~/Library/Caches/com.digiarty.macXvideo",
    "/private/var/folders/*/*/*/com.digiarty.macXvideo",
    "~/Library/Preferences/com.digiarty.macXvideo.plist",
    "~/Library/Saved Application State/com.digiarty.macXvideo.savedState",
  ]
end
