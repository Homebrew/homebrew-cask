cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.3.3"
  sha256 arm:   "8dfa9387d8d2f92167fc759a879674dd3dadca8fba163e3fcdde69b4f31be2a7",
         intel: "8d222312e140f69c8b59f6c148667ef19ab807779a2ce2f40e636f28af5566d5"

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
