cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.11"
  sha256 arm:   "36d531576819349920abb0008a6105046f5e48c3bcf7d8e478c61b03edb87ca9",
         intel: "20c0db4e0d0a48a184d99d39a69f9dc27d856aed1d4e3350077fa2e4919d4d6c"

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
