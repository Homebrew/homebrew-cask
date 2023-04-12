cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "24.1.0"
  sha256 arm:   "e52b070a58603c549e626b042d0a22b9b676dfdf2b764eeb7ed894332081481d",
         intel: "2b9886da22f8791c12b6036b466923a2a3bc17113cb98b9551245693d591aef9"

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
