cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "32.1.1"
  sha256 arm:   "b0e04b765702c35341e587e41b01eb9bcb1233953ab243a0c82e9555c04b269b",
         intel: "e3bb68b37e723af4aab8d9694661e5e9ecbe7b1fbc253fe263940dafffd66864"

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
