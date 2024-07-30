cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "31.3.1"
  sha256 arm:   "432d67498483e8bb537071c513fcfceaaabe55fcaec4c5bbc72deadcb8b40d7c",
         intel: "b04b33a4d44c426d22fb99af28f2d1d018370f5ae4a2a41d5503fe4635871e7e"

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
