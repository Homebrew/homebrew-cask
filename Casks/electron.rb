cask "electron" do
  version "11.3.0"
  sha256 "7569db1d2e470b0db512735f27f99498f631da3cd86374345139f18df88789fe"

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
