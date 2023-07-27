cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.3.2"
  sha256 arm:   "14dcf303e2e9c4a50d50df36e0a44dcb29d44d153a9536752c1fcb99e384a686",
         intel: "dbf7718fffca0093041968b9e5797c37a4f691d192394616a5905db7a481abe3"

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
