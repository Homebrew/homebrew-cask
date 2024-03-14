cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "29.1.4"
  sha256 arm:   "7ad63253fd6de9dbb337efbf4a6d0161f0e4c5953243bec27de488db98ef8a6c",
         intel: "e7887396018840ca482eb481edbff2e9a5580998412ffd217f70fad02f23969d"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Electron.app"
  binary "#{appdir}/Electron.app/Contents/MacOS/Electron", target: "electron"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
