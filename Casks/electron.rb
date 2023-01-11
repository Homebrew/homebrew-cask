cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "22.0.1"
  sha256 arm:   "2b639c928251148284752da08c6054d855a34b88283d77b2dd1f04d91bbc414b",
         intel: "64018b3a2694139cb8ef9c9b25afa14563955da6456fa719043fad33580f0d3c"

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
