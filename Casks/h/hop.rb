cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "4c163f9b03c922cd1407b4a3f5420a7d48039366db6a5b860368a1cdba4927c0",
         intel: "5ed036edc0338130d0c487deb32c034cd73731710fc315f2250dfa31cbca4768"

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-macos-#{arch}.dmg",
      verified: "github.com/golbin/hop/"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  depends_on :macos

  app "HOP.app"

  zap trash: [
    "~/Library/Application Support/net.golbin.hop",
    "~/Library/Caches/net.golbin.hop",
    "~/Library/Logs/net.golbin.hop",
    "~/Library/WebKit/net.golbin.hop",
  ]
end
