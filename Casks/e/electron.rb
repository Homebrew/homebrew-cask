cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.5.0"
  sha256 arm:   "e6d2a09348d4fe7c9fbd92bf796489a95e625642f0f1ce96169212554cfa6841",
         intel: "a5c5c0b621daf8242258c89edb2387fbdf1c69125c984f8564d89b87927373e3"

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
