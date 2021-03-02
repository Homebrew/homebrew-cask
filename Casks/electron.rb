cask "electron" do
  version "12.0.0"
  sha256 "18546dec0ecc63d1a679762e00bc85fbb820e08f7ca205924681379bb0a7afc2"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip",
      verified: "github.com/electron/electron/"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Electron.app"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
