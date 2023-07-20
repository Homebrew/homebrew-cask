cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.3.1"
  sha256 arm:   "1cc5e9b6451757ada1c07130b9454164d4206cf92595708fb6fc9ebff030f860",
         intel: "66c86c8651c4699b069fde53d5fcbf8887a2573c27e3eefc655462b27c047d07"

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
