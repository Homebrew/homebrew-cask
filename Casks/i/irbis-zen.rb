cask "irbis-zen" do
  arch arm: "arm64", intel: "amd64"

  version "0.30.0"
  sha256 arm:   "d8503e2a3bc51a3e3a5325a1db58588f847c98b95344e6777050c2c7e434e712",
         intel: "d9181622f306fef61da51105539daa559bab0f1a9c00c71e2973b8c273764792"

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
