cask "electron-fiddle" do
  version "0.17.1"
  sha256 "90bbec38f993c1c1e5311cf70a644b2d800e77554dd4d7d16fbb6fd61eaba9ea"

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
