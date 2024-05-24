cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.8"
  sha256 arm:   "a003df7662b1b271c0759649ac60687b67d6409619ae7acdb5b35d2aa6f6608e",
         intel: "e78813872f0f09f59649497c4122e9cfb683ac93715dc9f16e90578295076b50"

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
