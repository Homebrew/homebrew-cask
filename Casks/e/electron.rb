cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "28.1.0"
  sha256 arm:   "f757edef17bb3e31122c407c4c9127b7a19ce1855eaf9b44ea3516d075d91720",
         intel: "b50132481963013096842e6d57cb503bf77d80a1e018aab966b9e9e7b67f4aee"

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
