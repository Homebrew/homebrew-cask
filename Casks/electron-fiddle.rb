cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.5"
  sha256 arm:   "6fc33ea918232af6b4b98fbeb7709542b545c69972288ecf1f2e73862c3584c9",
         intel: "b6029b8d7458c515c64af37ab290e265626f7e708c82af8e2306bd66733f49db"

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
