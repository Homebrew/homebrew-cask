cask "electron" do
  version "11.2.1"
  sha256 "39d95668a3ea04bdc652ff9e2889c7a88f638534420e8e256679cbf4b7658a65"

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
