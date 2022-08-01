cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "20.0.0"

  if Hardware::CPU.intel?
    sha256 "e493320e3410bf8cb7ac5b17a5d58a0a8a50b8637303a7c1d9342c08af6cd180"
  else
    sha256 "0492396b3476735ca679c0e87d86e94b4a1630b5cdce3e4cf155ff443aff4932"
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
