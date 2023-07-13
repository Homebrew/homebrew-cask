cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "f45fd6640c02004adb427f02204f0e7bbe293919392a6ba0d6af2e664b88e098",
         intel: "81fb4d5a1b9fcc9147d9a0851481bbe47ee1df947b58e433ff462a6185847c9c"

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
