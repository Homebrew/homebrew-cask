cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.1.2"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  if Hardware::CPU.intel?
    sha256 "f95f70790fa689684ec2d4822451e45968a2307ccd674a4378a89667f1e2c50d"
  else
    sha256 "edcfb7e83c5edad21b05d9babb4a2840157e68dbe4278c3ab3b609ece22e1372"
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
