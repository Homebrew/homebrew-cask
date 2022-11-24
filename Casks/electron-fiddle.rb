cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "42ab1a404448465ed587c07788969f9456a6479334adaad16baf49e2f111080e",
         intel: "c879311b02fb203f98c0cd40d9e69604def214f5e43307bd930b24dbccd22e3b"

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
