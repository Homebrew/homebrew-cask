cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.2"
  sha256 arm:   "706d0cb2fdce94c378da2e3ea5aeb0e4114fc2be2d49aa73dd5e682ca9aa1ca7",
         intel: "48534b6e23ec63a0131370cc3c46104ae2b2da74c993224777146fc440ed97f0"

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
