cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.4"
  sha256 arm:   "9669bee275999de481038099837bc55447af9bb254c03a3e64aa596888791605",
         intel: "8bb7841b2b9c8e60d8ff4a98fb3e8c48b54b652cfbb6c71fe1c6febc7783e140"

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

  uninstall quit: "io.github.xiaoyouchr.GhostDownloader"

  zap trash: [
    "~/Library/Application Support/GhostDownloader",
    "~/Library/Preferences/io.github.xiaoyouchr.GhostDownloader.plist",
  ]
end
