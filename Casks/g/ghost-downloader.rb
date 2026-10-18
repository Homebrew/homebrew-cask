cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.2"
  sha256 arm:   "040ab2165bb0ed7418304c26a7cee119502f993870bd0f1b53f9841d47f88d1d",
         intel: "65461b986bf36e564bd1e4c5f522ab92d544bf82a1cf6608f1207fdbb8ecd453"

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
