cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "24.3.0"
  sha256 arm:   "ba78bbe49059fab7271a8c29f59a29dad07d8ce1d0bcba41336a71eb4de7087c",
         intel: "042b694ba0d01d71f7c713f04c87dfc9afd9b88468e9de8ee113f17b01b805ca"

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
