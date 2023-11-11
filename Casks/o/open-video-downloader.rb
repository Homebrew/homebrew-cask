cask "open-video-downloader" do
  version "2.5.4"
  sha256 "a1c10401771c2526b47777d075fecf0401068ed40f3d3a524d52ec7e2405e769"

  url "https://github.com/StefanLobbenmeier/youtube-dl-gui/releases/download/v#{version}/Open-Video-Downloader-#{version}-universal.dmg
  name "Open Video Downloader"
  desc "Cross-platform GUI for youtube-dl made in Electron and node.js"
  homepage "https://github.com/StefanLobbenmeier/youtube-dl-gui"

  app "Open Video Downloader.app"

  zap trash: [
    "~/Library/Preferences/com.jelleglebbeek.youtube-dl-gui.plist",
    "~/Library/Saved Application State/com.jelleglebbeek.youtube-dl-gui.savedState",
  ]
end
