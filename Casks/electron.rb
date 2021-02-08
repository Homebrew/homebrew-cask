cask "electron" do
  version "11.2.3"
  sha256 "e0b2784b25fd4a5ee4041d508d59bbb8386039c7ea7e9cea3e547c672f052b60"

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
