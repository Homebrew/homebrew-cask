cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.6"
  sha256 arm:   "9189d4a8d69175d94edafa4cb29a47389ebaff22c9baf0dd67a448e7a5240129",
         intel: "7d9e81712a4b0ab209d03d0eef08ee9c4da1f5293fb169ff08766356a2e65fbb"

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
