cask "electron" do
  version "11.0.1"
  sha256 "7124f33750a1b08224f177c9eb4a257e78345a8a5186ba1a61d40e378402cdb5"

  # github.com/electron/electron/ was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast "https://www.electronjs.org/releases/stable"
  name "Electron"
  desc "Build cross-platform desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  app "Electron.app"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
