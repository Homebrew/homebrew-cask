cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "adeb698eac4b6dfd19aac5dade9e9fef4b11dfe7f5f6bcc8e9bec7255ed76ec0",
         intel: "4af750b98b1d82414792509e6890c1e723b3e4d8dfa2b9f8568088f127393ceb"

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
