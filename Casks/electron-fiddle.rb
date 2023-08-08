cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.34.0"
  sha256 arm:   "4658730e01080adae53b37b820808aa5e87ce684bcbce1f0880b92bdae3425c7",
         intel: "565de4ebe11c70620d6c235daa6ce57149fec8a2cd2d834faa42c66250654819"

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
