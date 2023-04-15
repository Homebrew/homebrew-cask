cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "24.1.2"
  sha256 arm:   "3644b29ab2dde6cac0ac455fb5e965f739c4faaaad7e678bd4379c72723ea40a",
         intel: "ffe6a7c23d360b31bbc4dc05e05eb15b4261e72f1aac7d98ca7fbbd29bbba5e7"

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
