cask "electron-fiddle" do
  version "0.18.0"
  sha256 "5e2a7090fe9237eb9b132ad383ff5b94cd2dc4a836608949b6d5fd330ee7b281"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  appcast "https://github.com/electron/fiddle/releases.atom"
  name "Electron Fiddle"
  desc "Easiest way to get started with Electron"
  homepage "https://electron.atom.io/"

  app "Electron Fiddle.app"

  zap trash: [
    "~/Library/Application Support/Electron Fiddle",
    "~/Library/Caches/com.electron.fiddle*",
    "~/Library/Preferences/com.electron.fiddle*.plist",
  ]
end
