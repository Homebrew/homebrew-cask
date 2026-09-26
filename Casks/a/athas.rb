cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "cd303c5fb3f37798eb9622ac148ddffcf3f82ab59f38cb71834ba1ea3e019865",
         intel: "c6bb96ff6c38d5569ca13af4b557ea345d7ffe307213909faa0baef50ae8a15e"

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
