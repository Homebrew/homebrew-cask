cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "22.1.0"
  sha256 arm:   "4ebf838308e93ad9956f3ce3a14b8d41607ffec5cd2054818d0c91b79df101a2",
         intel: "969cad3fad6a03cbbc1658722cbf87547a8465c90dd4287fd5c03bd15bbf8a5b"

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
