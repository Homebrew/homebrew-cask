cask "electron-api-demos" do
  version "2.0.2"
  sha256 "274e1f3c2a90ab884b117af84988c1aea9931d37fe8169fb6aeecab8e5b78464"

  url "https://github.com/electron/electron-api-demos/releases/download/v#{version}/electron-api-demos-mac.zip"
  name "Electron API Demos"
  desc "Explore the Electron APIs"
  homepage "https://github.com/electron/electron-api-demos"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Electron API Demos.app"

  zap trash: [
    "~/Library/Application Support/Electron API Demos",
    "~/Library/Caches/com.electron.electron-api-demos",
    "~/Library/Caches/com.electron.electron-api-demos.ShipIt",
    "~/Library/Preferences/com.electron.electron-api-demos.helper.plist",
    "~/Library/Preferences/com.electron.electron-api-demos.plist",
    "~/Library/Saved Application State/com.electron.electron-api-demos.savedState",
  ]
end
