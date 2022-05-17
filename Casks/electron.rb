cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.2.3"

  if Hardware::CPU.intel?
    sha256 "025252b13645cd894a8b9af2d20e5ab49ccda012da87842d411565098fa38f83"
  else
    sha256 "8384738179acceb9d9dd9cdda3823b4d070a78f5d9c2783bf7d2d96448d1a036"
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
