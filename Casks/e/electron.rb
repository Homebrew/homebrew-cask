cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.0.1"
  sha256 arm:   "e79d3b397a456cab6b3f7b33578d23616df8501577e7321c1e71b87f5999ea55",
         intel: "2509c623097c16e57dfd498043cd9253b6195ee5c98faef0b7654fbce78b667b"

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
