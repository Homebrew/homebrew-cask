cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.4"
  sha256 arm:   "1ba10d8085b0378d86e5eadb6b7afaf1c8c418f7ec737dca020fada792a86dee",
         intel: "655401bc49e1e7095b6acd9df9013fba3989e2d924e0b9af7021f2d51225c454"

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
