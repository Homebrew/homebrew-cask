cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.1.0"

  if Hardware::CPU.intel?
    sha256 "bd80d6b0b62c9bec195d264aa21a255f4324a8b56849e04972c1fcc262757c31"
  else
    sha256 "83fe2fc24976d09a0e0fcc3a60226f190cf9b67287fe4434d3d76d59fa45315c"
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
