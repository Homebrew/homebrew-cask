cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "29.1.5"
  sha256 arm:   "3b2d65ed9f668a82c666d267bf46bf4663fc2a8e71e75abc2c7a709d41caba63",
         intel: "133d79eae9b9a75c3cb5b822d3dfe3c559a0e898cb751fd070d1693ab606c06c"

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
