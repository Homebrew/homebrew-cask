cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "43c976be97f3a5e6715312b51f31f01e45b8260e2707a429e6a8304f6fe761aa",
         intel: "8aa0c63e0fa714a8425227d173ea642e3eb4a16dcc03547c6044b7847ee9938c"

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
