cask "electron" do
  version "10.1.2"
  sha256 "2e2696cb187a65330276ec8110537bba9f0a10fc9342dd958ea1b9c37d5aab4c"

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
