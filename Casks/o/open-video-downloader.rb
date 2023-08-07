cask "open-video-downloader" do
  version "2.4.0"
  sha256 "02032bce606998f86dc0375a0c597d0320e689bddaf6528528e310446c432707"

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
