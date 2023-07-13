cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.3.0"
  sha256 arm:   "9b33849cd9f0fcfc266372d2185f59f4c6539523410369712d8ac100ca2157da",
         intel: "e1a07757ad11bfae64b24e4adbd59d3ec7ff43e15e1e631903bc07bf2d5bea89"

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
