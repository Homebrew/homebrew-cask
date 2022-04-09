cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.2"

  if Hardware::CPU.intel?
    sha256 "923b74e6c4183a9d0ec17ffbd0e0c4e62391783973f9b3e9e37c100b138858cb"
  else
    sha256 "76e5dd64996d74a8f793607725af4e05a46439061abf64e5732b065d6ed5623b"
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
