cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.3.1"
  sha256 arm:   "c616b56b5c7bf4f53ccaff973d978f8037c2e634e5192ac33c9f065c08b8607a",
         intel: "177b624e5eb8cb5953f66dd1a391d558da8c56d4e2c2767859140309516c2172"

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
