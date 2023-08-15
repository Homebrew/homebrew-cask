cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "26.0.0"
  sha256 arm:   "883b730c3f691d5e65df63a45c0a6e593568b5173477ea3a2e45e3d6c77f3260",
         intel: "47c7dbed165da647ee9f8c6225d2b255f4432b3720179dd0ec0620457c2c0d45"

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
