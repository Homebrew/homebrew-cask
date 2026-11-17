cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.6"
  sha256 arm:   "3c6b204b6f6ed42da2037ee6130663bb5054cefde8e4ef32a4ddc8bb89720ee2",
         intel: "41fa06da921496792ff98b2d4f845b951d1d409d9c63952017d6918bad1d4957"

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
