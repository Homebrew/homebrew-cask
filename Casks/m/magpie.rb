cask "magpie" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2375"
  sha256 arm:   "8927128583ef3c8da6d70430f1014c53cbbb75b21533910bbecb168d8206a12c",
         intel: "c0ce5ead995199226985d2a6c3980a882daab5f38d0dc74c3e6f4625749a3564"

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
