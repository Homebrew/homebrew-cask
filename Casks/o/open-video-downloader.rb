cask "open-video-downloader" do
  version "2.5.5"
  sha256 "18ca0f13e42002983c11807b52aa55948f02ef876fb51c72b9893c774521974b"

  url "https://github.com/StefanLobbenmeier/youtube-dl-gui/releases/download/v#{version}/Open-Video-Downloader-#{version}-universal.dmg"
  name "Open Video Downloader"
  desc "Cross-platform GUI for youtube-dl made in Electron and node.js"
  homepage "https://github.com/StefanLobbenmeier/youtube-dl-gui"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Open Video Downloader.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jelleglebbeek.youtube-dl-gui.*",
    "~/Library/Preferences/com.jelleglebbeek.youtube-dl-gui.plist",
    "~/Library/Saved Application State/com.jelleglebbeek.youtube-dl-gui.savedState",
  ]
end
