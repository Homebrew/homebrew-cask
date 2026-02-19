cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "bff00331e29ed3e78b4e264ef4f412ae143ce1664f5f5475cfc6f32e9e72bb85",
         intel: "6d99e460b096c9f18eea83b773eca0c1e3ad97cf908ccb9ba3e52addb18b2de1"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Athas.app"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
