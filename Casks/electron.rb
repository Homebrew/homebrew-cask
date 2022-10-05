cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.1.0"
  sha256 arm:   "d1d8ba60361809a4f2c9fedcb62d8c7873939e1251629d6dcf9e91660873a75c",
         intel: "5d987264c0a985d45819034891d7d03bc27989b6f4f84fd86fe1f832055471ee"

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
