cask "hackernews-tui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.13.4"
  sha256 arm:   "ef6940932717f96518ba149dce3779b4870cf7eb997d183d2e77ef22a5a72709",
         intel: "cf7ac79f74110e7c783b58f28553c687d33a49d7ed1189e80db7fb13fa17b670"

  url "https://github.com/aome510/hackernews-TUI/releases/download/v#{version}/hackernews_tui-#{arch}-apple-darwin.tar.gz"
  name "hackernews-TUI"
  desc "Terminal UI to browse Hacker News"
  homepage "https://github.com/aome510/hackernews-TUI/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "hackernews_tui", target: "hackernews-tui"

  # No zap stanza required
end
