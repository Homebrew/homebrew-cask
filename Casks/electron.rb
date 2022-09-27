cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.0.0"
  sha256 arm:   "116482996e6c1f971b2b77d014c78c6620f3fadf45bdbe263cef4d4a224da371",
         intel: "fba38ad26ec35f589feeef638144031f815efa3eb16ebc0c8fde3e072cef3034"

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
