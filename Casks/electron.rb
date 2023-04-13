cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "24.1.1"
  sha256 arm:   "6e508ec2b744ffa65b695fede3fa4a1b219450197de572b8438473602cabdc6e",
         intel: "4942638d63dcad945aa2e320a39547da36f696d4ba787225201648af4616c4c8"

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
