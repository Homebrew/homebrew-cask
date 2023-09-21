cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.34.1"
  sha256 arm:   "4617a15b898031b0026ac16ed190ba12009e7fc46ba552bcc983433b2d50a22d",
         intel: "23fc6bee51fe13522c69e52099a0250d0b74704b249d29bcb35470679e622125"

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
