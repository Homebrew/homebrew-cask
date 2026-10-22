cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.4"
  sha256 arm:   "9c8b0fb813c4823a82213b1e1bb99f5b6ef5db9d678369135f12077a2110e692",
         intel: "f28469c2a5727f29a310361105c7ca762db2c4106fd6758f4a42c3659e1823d7"

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
