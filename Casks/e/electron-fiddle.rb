cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.34.2"
  sha256 arm:   "1b428d2f8cd3af954f5955d72b23515d5cb02a0edcad551422e6958fdc8988c2",
         intel: "c65a21c94f8fb3913ab65b1a848fcbbf57371e3e691c52d42d461b80c7f2c910"

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
