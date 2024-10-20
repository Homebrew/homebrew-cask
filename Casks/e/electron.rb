cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "33.0.1"
  sha256 arm:   "d0a0724a93f975667ab91df3d974da5de8d554dc868addc2f931d9b48a2956ab",
         intel: "0eb71f045cd54ba0ea1888650791854a5a02665feac408d6cb98366a30e3a6ae"

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
