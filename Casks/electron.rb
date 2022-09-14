cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "20.1.4"
  sha256 arm:   "dff42627d50cc5ca56a780da33d574f33232c4cba7c63f7bd77372eab8c2158d",
         intel: "3cd5ae73b7667556a7ffbd9ffcee32eafb9ba8f6cc65df224dea31591a6162b0"

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
