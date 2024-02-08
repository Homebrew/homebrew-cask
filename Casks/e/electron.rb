cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "28.2.2"
  sha256 arm:   "23119b333c47a5ea9e36e04cdc3b8c5955cfccfeb90994f1fecea4722bfb8dcc",
         intel: "48f3424b3cbdf602a13f451361ade2f7f2896a354a51f78da4239dbdf2d1218b"

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
