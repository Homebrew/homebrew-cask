cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "23.1.1"
  sha256 arm:   "49b0357aa21f317832dd8f620ff18cbf6bcd9aef264113ac67b9d306186c8eef",
         intel: "fb93e045e57410ecf046aee46a0baf413c55256ab7cf170f648a53b5d2e2a055"

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
