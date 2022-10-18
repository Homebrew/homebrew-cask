cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.1.1"
  sha256 arm:   "353b54f370b5f59e222db43a8cca9359426aa60a6d7ddde3e794cf641d497721",
         intel: "babc6c8a48c2248a16d99cae1819f0803085d44c3e7e0c9234bbce98b1bb8c29"

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
