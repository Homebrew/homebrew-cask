cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.9"
  sha256 arm:   "5c4b956f6c495d679c88fa4c800394a647cac82185994075b9e9fa82573f5d08",
         intel: "06406698708635dfc045003d209fb15227d3f4d33c324fd6d1c6610960d24eb8"

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
