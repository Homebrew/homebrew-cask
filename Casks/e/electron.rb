cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "26.2.2"
  sha256 arm:   "fc75e8955de8e4ad47bf1ca49263dd44d757cfcd029da5d0039cca1a0fa16b31",
         intel: "eddc1340d7663766b3a5e6c91ed5b5a58947f1d23dc909eb20ad1e4bbcb1542a"

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
