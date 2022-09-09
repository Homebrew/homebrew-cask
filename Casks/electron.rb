cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "20.1.3"
  sha256 arm:   "a09f83442f1e9f4b1edc07445a1dca73d9597529b23d62731eaa3fa0488f4ab0",
         intel: "134714291dcbecbf10cbc27c490a6501e2810bd4147a74f3b2671503445f2ce8"

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
