cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "26.2.3"
  sha256 arm:   "a98d048154c09bacc52f9e8e7eda9265b79da7b1b692e23d15d9448f40b1e74c",
         intel: "d9d87ddcd8ea3a1ae6ff3da79c3a01a6abe4fc7eac1db36ed7ac6dd40c39ae39"

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
