cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "22.0.0"
  sha256 arm:   "79b700953a20f4055bf94f11d7a6be9d39a7545774b45ca487cf33482828ebfd",
         intel: "b072e64ae563997abed9b76e30b617dfc23a33d6bba6b85fdf30c0877a6215c2"

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
