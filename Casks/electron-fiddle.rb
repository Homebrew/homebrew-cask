cask "electron-fiddle" do
  version "0.16.0"
  sha256 "b3a70530aa6422b208663e025ec25a1047f40e08f970e6d6a84fa65ad978b251"

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
