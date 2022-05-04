cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.2.0"

  if Hardware::CPU.intel?
    sha256 "43b4443bee220e11bd9ed50c9daecce9d85b1f2827c386c16ced1f7dbf2d9760"
  else
    sha256 "64ec6623664f8e2f0925714778dc64f8556db28dea4060507ee6de65a692e0f9"
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
