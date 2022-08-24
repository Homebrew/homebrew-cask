cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "20.1.0"
  sha256 arm:   "551c7f9ecf3f9d40572b3971b02c30e492134ff9400d97d3055fa7d089eff3eb",
         intel: "5d790a90a6a156d846157e4ae210fd4c1013356a2849681b762e7dd8828bfedf"

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
