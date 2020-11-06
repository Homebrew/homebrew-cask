cask "electron" do
  version "10.1.5"
  sha256 "30dc5d5a913c38c6ae7fa6913b1a907545f0230157efc066e2d5a7affd26cd1e"

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
