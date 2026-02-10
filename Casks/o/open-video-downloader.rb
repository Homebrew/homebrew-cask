cask "open-video-downloader" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.2"
  sha256 arm:   "391537bcc77f01691faf7e1fd585dca9f82d271c19da9349996e50e07fe2e160",
         intel: "38cd0e6da462d0c1b62bfed2e475400bc33d0930867eb66a697f587f5e72dfc1"

  url "https://github.com/jely2002/youtube-dl-gui/releases/download/app-v#{version}/Open.Video.Downloader_#{version}_#{arch}.dmg"
  name "Open Video Downloader"
  desc "Cross-platform GUI for youtube-dl made in Electron and node.js"
  homepage "https://github.com/jely2002/youtube-dl-gui"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Open Video Downloader.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jelleglebbeek.youtube-dl-gui.*",
    "~/Library/Preferences/com.jelleglebbeek.youtube-dl-gui.plist",
    "~/Library/Saved Application State/com.jelleglebbeek.youtube-dl-gui.savedState",
  ]
end
