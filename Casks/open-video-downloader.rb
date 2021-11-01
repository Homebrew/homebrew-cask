cask "open-video-downloader" do
  version "2.3.1"
  sha256 "5887b00d13a7c2a3c6105bcd297f8f7b434a96107ca82e5fd6465a135108a2d4"

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
