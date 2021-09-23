cask "electron" do
  version "15.0.0"

  if Hardware::CPU.intel?
    sha256 "532262a2b12f6df5413132f7aea176bdefc6ccfcb701734b0c3169dc17612832"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip",
        verified: "github.com/electron/electron/"
  else
    sha256 "7e688facf77954275679f8979f5881f029149a89eabc079c44a19faa1b19e06b"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-arm64.zip",
        verified: "github.com/electron/electron/"
  end

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
