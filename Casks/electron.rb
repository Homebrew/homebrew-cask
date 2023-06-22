cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.2.0"
  sha256 arm:   "50060b0cf8cd2e8180a1bea2c94bc9988ee66cfe065abe2b42cb999707b1b3ba",
         intel: "21f69f236d89dc86ca63f24fa6b7a7ef825862250ad83d6f09973615b10360b6"

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
