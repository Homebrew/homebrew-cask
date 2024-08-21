cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "32.0.1"
  sha256 arm:   "8db368fd7353333b53092ccfdcd440b7bae1195e7950e1fb42b7606bd684802b",
         intel: "295f659e58a352043b91a3ea1251edc2f33692e00eb7b1f1b1d47e7b0b9bd02c"

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
