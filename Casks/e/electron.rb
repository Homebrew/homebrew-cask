cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "26.2.1"
  sha256 arm:   "4e095994525a0e97e897aad9c1940c8160ce2c9aaf7b6792f31720abc3e04ee6",
         intel: "007413187793c94cd248f52d3e00e2d95ed73b7a3b2c5a618f22eba7af94cd1a"

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
