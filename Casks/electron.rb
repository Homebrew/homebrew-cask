cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.1"

  if Hardware::CPU.intel?
    sha256 "2fffd017d45b62ea69df1a69728cdf57a9f75801f1b491d36ffef0d2c980cc6e"
  else
    sha256 "37f5986d874b98a41d49a9a5347aef2a0707c3c57a8e98bc8e17ba9d879f9964"
  end

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
