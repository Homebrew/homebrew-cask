cask "electron" do
  version "10.1.4"
  sha256 "d242a3da851d41b7a8a5ea8caaf10e8cf9646fdfbdb93a9fa87983bad1a7ed9f"

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
