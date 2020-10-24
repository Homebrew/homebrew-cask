cask "electron-fiddle" do
  version "0.17.6"
  sha256 "f6e22f366b77c84918222e0572a7ea5c493f8a262cb9576336caa3759918f18f"

  # github.com/electron/fiddle/ was verified as official when first introduced to the cask
  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip"
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
