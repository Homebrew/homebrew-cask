cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "d432ccf0fc82449572e0ed0a5b17206f5de82bbccb970e1be60db120b94d9fec",
         intel: "a900adb071911f44c1f536175aa80a401b390d952ede9aebc8a8d4dbf75570a8"

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
    "~/Library/Application Support/dev.athas.app",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Logs/dev.athas.app",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
