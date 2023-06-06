cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.7"
  sha256 arm:   "1db34774a7a218cd517f3cf88e6ea618a7960f7b0fc3b00d2c7c9afe6af04a11",
         intel: "b642ca5b1f3deb675a32ad2202fd926248e4e26c18f2f20412f009610942161f"

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
