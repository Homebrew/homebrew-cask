cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.1.0"
  sha256 arm:   "1ea1260763f1a4d88098315c5a05850e54f54d68c32a18a2e850caaa0bddfe53",
         intel: "7e0d64ea0117a2dbf9e023d651b768b22e4d45848da88786bf150a88702aab48"

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
