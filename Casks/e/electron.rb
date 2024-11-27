cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "33.2.1"
  sha256 arm:   "15615ce68c1a31b0db186af8607c00a30e3f64e63642aab735b4997d0fab7631",
         intel: "d4ba6779efea1034b98d6ad3aef5388c16a4fe2f8938cbeb6a6547ebfe4c7bda"

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
