cask "zen-privacy" do
  arch arm: "arm64", intel: "amd64"

  version "0.28.0"
  sha256 arm:   "9deed05a35b5daa3e05827bb5b04fc33e76eccc08b1476d5537a077d8e6bc0d6",
         intel: "98c54ee50e417c51ad555fd8d51a759497281e47563df5743229fd1bf529873a"

  url "https://github.com/ZenPrivacy/zen-desktop/releases/download/v#{version}/Zen_darwin_#{arch}_noselfupdate.tar.gz"
  name "Zen"
  desc "Ad-blocker and privacy guard"
  homepage "https://zenprivacy.net/"

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
