cask "open-video-downloader" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "bb1af8f6bbb238c173dd6934ee4dedb8641341265bb802bd8ab8d72af99f27d2",
         intel: "b40ee20057419ceddfec1ebb494445884ff2dab058b362fb84b3f8980a26682e"

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
