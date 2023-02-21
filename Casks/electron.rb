cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "23.1.0"
  sha256 arm:   "ad742d86f6420cc49cdb1ce93f0a919ea3428ca902878bbb3241ee603030efff",
         intel: "f8c9c51ae190cca4b26bfff4f6c3a3ab6eef88b3d3cac761bf37c5c533c3f3ed"

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
