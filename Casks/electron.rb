cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.8"

  if Hardware::CPU.intel?
    sha256 "fdf8a41460bb702a05db49786f6a332f5f3f846076b07c989a7662ec3d383015"
  else
    sha256 "b3936b74f35109255bc8f13d3ce036f3e288d70d20d4047e57b4e5d8a53cfed2"
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
