cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.2"

  if Hardware::CPU.intel?
    sha256 "a3b9fd83dea4cfa959ddd72be4cbcb8d0503f4ab2741705561b62de8b5218895"
  else
    sha256 "3894d141b060d37f1248556525e96a9fc1d4afc237b740f5093bdcd5731972d1"
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
