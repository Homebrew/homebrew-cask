cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "20.0.1"

  if Hardware::CPU.intel?
    sha256 "2ceea21ba4f79e1e9bea6d01e31a6339288a3d98adf23ac52a728bb22e55794c"
  else
    sha256 "42f251973d4ae90941f82898d4a2e21d7e4c899e920bc671aba03eedb871ee10"
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
