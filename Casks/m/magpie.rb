cask "magpie" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3825"
  sha256 arm:   "2c8f8551cc4e2c17864791357c3a5e3cebff7d97a4ab58a2750f4fa3fc7ae1b9",
         intel: "9b31c133e22d72f0ea5114026a8141780ff6d19a111033dc6374b1b486060249"

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
