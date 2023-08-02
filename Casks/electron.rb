cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.4.0"
  sha256 arm:   "8a1f0cc5c8fea926360347f9448a766f56fe4fea8418ce11ca5755be933dcae2",
         intel: "f6e65c0d27e99121e53eb52335ef42653108bfa5cb8de06c35853c253fafc000"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
