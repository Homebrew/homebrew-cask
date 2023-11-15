cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.1.0"
  sha256 arm:   "e2b581b75e10b61267d73d96b15ee6358fa42fc925e214b3473a68e4cfd5dff3",
         intel: "bd11cb617a9fb2926dc07aa277987f1db36c19fdabd566e6dc959e2504e0689a"

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
