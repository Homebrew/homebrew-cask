cask "open-video-downloader" do
  version "2.3.0"
  sha256 "2317e4dfb3f2930de3afba2d5794521e8887150b9a4928ec1829654ef22ad9e7"

  url "https://github.com/jely2002/youtube-dl-gui/releases/download/v#{version}/Open-Video-Downloader-#{version}.dmg"
  name "Open Video Downloader"
  desc "Cross-platform GUI for youtube-dl made in Electron and node.js"
  homepage "https://github.com/jely2002/youtube-dl-gui"

  app "Open Video Downloader.app"

  zap trash: [
    "~/Library/Preferences/com.jelleglebbeek.youtube-dl-gui.plist",
    "~/Library/Saved Application State/com.jelleglebbeek.youtube-dl-gui.savedState",
  ]
end
