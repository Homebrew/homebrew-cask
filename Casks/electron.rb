cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "22.0.2"
  sha256 arm:   "2aace0a6f4797b6fa6c3f84932ebcd5601168cd2945b2191e3fea48a29aa9f46",
         intel: "b42c036e099fd402b8f907aef229fb66bd4040a1b4d38a249a60bbd250b444a9"

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
