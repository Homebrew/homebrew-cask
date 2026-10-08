cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "3ec171e75d3f787d265a4774588aa6cab47a9b2d0fc3b5a4b610bc3b898856ad",
         intel: "bd09b926987733f0bfe2cb3c43888afaeeee4bd6b7cd71fdc0a2216e5261dcf7"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Athas.app"

  uninstall quit: "com.code.athas"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
