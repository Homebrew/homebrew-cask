cask "irbis-zen" do
  arch arm: "arm64", intel: "amd64"

  version "0.29.0"
  sha256 arm:   "699eb5547bbca34999b200eccf8c5bf61ad06d0a948981e7560f9ec5884de8cf",
         intel: "fd41f14b1bbc8d4c020a128674db6b4edaf54efbff56ce1a6a6e407c84f1d771"

  url "https://github.com/irbis-sh/zen-desktop/releases/download/v#{version}/Zen_darwin_#{arch}_noselfupdate.tar.gz"
  name "Zen"
  desc "System-wide ad-blocker and privacy guard"
  homepage "https://irbis.sh/zen/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "zen"
  depends_on :macos

  app "Zen.app"

  uninstall script: {
    executable:   "/Applications/Zen.app/Contents/MacOS/Zen",
    args:         ["--uninstall-ca"],
    must_succeed: false,
  }

  zap trash: [
    "~/Library/Application Support/Zen",
    "~/Library/Caches/net.zenprivacy.zen",
    "~/Library/Caches/Zen",
    "~/Library/LaunchAgents/net.zenprivacy.zen.plist",
    "~/Library/Logs/Zen",
    "~/Library/Preferences/net.zenprivacy.zen.plist",
    "~/Library/Saved Application State/net.zenprivacy.zen.savedState",
    "~/Library/WebKit/net.zenprivacy.zen",
  ]
end
