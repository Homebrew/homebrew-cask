cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.2.2"

  if Hardware::CPU.intel?
    sha256 "9e8f4714f53465cc1595e63ba841269edfd081c4222ceab0da1118653fa946bd"
  else
    sha256 "0a3ddd50d592b785b1714524df82a3bdff2645971d656a86c284c27f82ea73a0"
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
