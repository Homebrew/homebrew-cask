cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "22.2.0"
  sha256 arm:   "f9243949ce78489483e5a115c1302b27a6a53c3a5ca73600f2631f9b2a777ba5",
         intel: "a40844ceb988843b863a0b9babce5e15631396f620a23de33828bae89f9d71ff"

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
