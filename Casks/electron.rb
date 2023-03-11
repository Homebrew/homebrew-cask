cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "23.1.3"
  sha256 arm:   "f14d2534d564e73b8c8bdf9a302d9e066a4967b70aa4013c87c1e640be0ace55",
         intel: "e92ae2361fc15e98a3d127b39d4ee3e5fd528abd1618701e25ceb134bd6c2ee7"

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
