cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "23.0.0"
  sha256 arm:   "125aaf1f1369788afbc80babcd438d4da4806c8d8b7d7a23420026f0caf5590a",
         intel: "0dbc16583fd87d902d3fc5196e0e9f5c86a145d2940cfae19707dcf253c7d453"

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
