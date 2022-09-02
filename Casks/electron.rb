cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "20.1.1"
  sha256 arm:   "a99a2926eb79a5d7f73d032750863bc1aed350d7253c50d0250a209ed82c653d",
         intel: "b96ffc61564db437d042b2ba4113644be9b9bfce8453167307883710b4b3742c"

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

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
