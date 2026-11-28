cask "magpie" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5025"
  sha256 arm:   "94ca9e1606c3fb311b2465d72f4a01367375f6953bdd7f75f29b0c003e4eeb03",
         intel: "89fa590060c9cd53b88c41a41f0f258d90ecee4a98e469cd70a2c47b763b41d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Model gateway for AI coding agents"
  homepage "https://usemagpie.ai/"

  livecheck do
    url :url
    throttle 25
  end

  auto_updates true
  depends_on macos: :monterey

  app "magpie.app"

  zap launchctl: [
        "com.yetone.magpie",
        "com.yetone.magpie.serve",
      ],
      trash:     [
        "~/.cache/magpie",
        "~/.config/magpie",
        "~/Library/Caches/com.yetone.magpie",
        "~/Library/Caches/magpie",
        "~/Library/LaunchAgents/com.yetone.magpie.plist",
        "~/Library/LaunchAgents/com.yetone.magpie.serve.plist",
        "~/Library/Logs/magpie",
        "~/Library/Preferences/com.yetone.magpie.plist",
        "~/Library/WebKit/com.yetone.magpie",
      ]
end
