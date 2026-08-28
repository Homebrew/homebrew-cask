cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "a2a7b86c6aa0194a7f071562847c758c0f758b24cf82fc94bc252c9747bd6883",
         intel: "9f1508aee70c3f8233d6bdaa8a34a8ebde8438878608b731ad347bed1dba2bfc"

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-macos-#{arch}.dmg",
      verified: "github.com/golbin/hop/"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  depends_on macos: :monterey

  app "HOP.app"

  zap trash: [
    "~/Library/Application Support/net.golbin.hop",
    "~/Library/Caches/net.golbin.hop",
    "~/Library/Logs/net.golbin.hop",
    "~/Library/WebKit/net.golbin.hop",
  ]
end
