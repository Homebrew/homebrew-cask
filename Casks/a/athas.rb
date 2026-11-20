cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "4e287fec631494f94c3a4d966f80e2dc7f5a5d09bad2978f780dde06a27abf0c",
         intel: "81a171a5f490f5f926777069f6c5a0033d2f9ad3f71b5fe866b02bca4da3887e"

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
