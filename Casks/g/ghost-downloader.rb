cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.3.4"
  sha256 arm:   "ddaf8be985123cf0edb8a7d4e5e30843a670072ebbe93639f3ba04149739859f",
         intel: "1eb8a3c1100200930120cc1a0b2ed5d6ab24619dd21192b0b49bfb06806bdb66"

  url "https://github.com/XiaoYouChR/Ghost-Downloader-3/releases/download/v#{version}/Ghost-Downloader-v#{version}-macOS-#{arch}.dmg"
  name "Ghost Downloader"
  desc "Cross-platform multithreaded download manager"
  homepage "https://gd.xychr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Ghost Downloader.app"

  uninstall quit: "io.github.xiaoyouchr.GhostDownloader"

  zap trash: [
    "~/Library/Application Support/GhostDownloader",
    "~/Library/Preferences/io.github.xiaoyouchr.GhostDownloader.plist",
  ]
end
