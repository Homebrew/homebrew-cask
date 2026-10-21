cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.3"
  sha256 arm:   "fd423cafb4c792ab7158d361e9d8b05ff59e749f4b317b8d28f042e64b56a21c",
         intel: "188ccc2e03d9f5ee67fc09e488e40003e6e994df47c55c135579723873aba459"

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
