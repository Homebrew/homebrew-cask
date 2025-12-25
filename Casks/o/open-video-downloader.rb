cask "open-video-downloader" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "673ba2016441e89ff4692118bf813481e11d0c8da59bf663ad89aed84531ad14",
         intel: "a99a9ea34b970a3bedc49d9e48c63d6dba5ecb677abd697ed20942dce868b356"

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
