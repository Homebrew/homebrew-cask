cask "open-video-downloader" do
  version "2.5.6"
  sha256 "4739a133136afc5386fd44b42f37810cea1df6ff332c033b04ae2f5846bfa09c"

  url "https://github.com/StefanLobbenmeier/youtube-dl-gui/releases/download/v#{version}/Open-Video-Downloader-#{version}-universal.dmg"
  name "Open Video Downloader"
  desc "Cross-platform GUI for youtube-dl made in Electron and node.js"
  homepage "https://github.com/StefanLobbenmeier/youtube-dl-gui"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Open Video Downloader.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jelleglebbeek.youtube-dl-gui.*",
    "~/Library/Preferences/com.jelleglebbeek.youtube-dl-gui.plist",
    "~/Library/Saved Application State/com.jelleglebbeek.youtube-dl-gui.savedState",
  ]
end
