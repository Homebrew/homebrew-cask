cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.2.0"
  sha256 arm:   "b4ebb35ee288dadd512bdb5d3fda321b29aa8e46af410af12a41e95e833ac5b9",
         intel: "060efe8e2d0915b7a8d6c8287209875567cb49205cc1281ee34b70fbb510a699"

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

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
