cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "28.1.2"
  sha256 arm:   "e39e436c199e46a7661e0b41ec17ed7670c04f7d9d4831a096873698f1231738",
         intel: "c38676995dfef20104983847a472fff53be8231241e9af6da89f6c2cbe5e5312"

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
