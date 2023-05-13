cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.6"
  sha256 arm:   "b2fa262f8333e0064a2b65489587fc26a7f5e79a6b7d11f74a8b50ae2f7dcc8d",
         intel: "1adef80ef37b25833b2f1e90aaadb0a010fc5ed64476a5216bad5ea80dd3116c"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  name "Electron Fiddle"
  desc "Create and play with small Electron experiments"
  homepage "https://www.electronjs.org/fiddle"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Electron Fiddle.app"

  zap trash: [
    "~/Library/Application Support/Electron Fiddle",
    "~/Library/Caches/com.electron.fiddle*",
    "~/Library/Preferences/com.electron.fiddle*.plist",
  ]
end
