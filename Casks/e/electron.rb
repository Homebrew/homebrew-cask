cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "31.2.0"
  sha256 arm:   "278d554194babe49b2583052c957d1b87657f709d7f3907227e87c25a7c6077b",
         intel: "f3a999776c1d63ebc57169b5341bb1452118eb1e1775946450be5a48d21ab10e"

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
