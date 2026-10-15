cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.0"
  sha256 arm:   "54758fd4fad44cb298d1402c4a6da96fafbf48de588c88b85545b1f534a2ed93",
         intel: "32c87e9d043f94a94de5a60e4f263f45c7ad477d04fc5b36a8d51a47584f8400"

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
