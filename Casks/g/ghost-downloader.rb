cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.10"
  sha256 arm:   "eb70056a0d9815dc288326285283273c6796ebc89d12c7835e3c566137747d5e",
         intel: "8f0e75a88c4a6f42a5ac1c8df38fac7f1c919e847b305a548ebf7f6a42ce2ed6"

  url "https://github.com/XiaoYouChR/Ghost-Downloader-3/releases/download/v#{version}/Ghost-Downloader-v#{version}-macOS-#{arch}.dmg"
  name "Ghost Downloader"
  desc "Cross-platform multithreaded download manager"
  homepage "https://gd.xychr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Ghost Downloader.app"

  uninstall quit: [
    "com.xychr.ghostdownloader",
    "io.github.xiaoyouchr.GhostDownloader",
  ]

  zap trash: [
    "~/Library/Application Support/GhostDownloader",
    "~/Library/Preferences/io.github.xiaoyouchr.GhostDownloader.plist",
  ]
end
