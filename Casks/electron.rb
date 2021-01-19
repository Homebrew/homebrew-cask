cask "electron" do
  version "11.1.0"
  sha256 "827b0b3e562535de25d3e4d2c4d7529338efae9197e8cf6702dda786b5870bd0"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip",
      verified: "github.com/electron/electron/"
  appcast "https://www.electronjs.org/releases/stable"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  app "Electron.app"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
