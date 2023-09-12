cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "26.2.0"
  sha256 arm:   "1bb9f1f9d26b045ffa695ed0e73d5e92b0bbbe7adb9c0565585a5c4cd3bc6720",
         intel: "148c1d94598064ce2ded5a639891af6b2222af87ee5c23b1d66bc9e29d45d90e"

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
