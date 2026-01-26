cask "open-video-downloader" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "f9b5bdc319d7a5089fb4d74ba50375367ee3ed0031aee3dc3de50d93abc82edf",
         intel: "11e4858bdb88c4116aa241134e6826979b555cb3442db419f544ed74874207a3"

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
