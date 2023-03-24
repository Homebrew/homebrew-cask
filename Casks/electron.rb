cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "23.2.0"
  sha256 arm:   "cbdfac23b6a0500d1ebd8baec7463112ce8728d49a48d8398c0dbcc6da125aa4",
         intel: "1e1020540929dc5f8b7516e4260ddd937486fe9080c69b3a0d13c9e07e1436c0"

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
