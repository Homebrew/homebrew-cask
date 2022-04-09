cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.3"

  if Hardware::CPU.intel?
    sha256 "c0587f93839f4e8947327f0fd941640c1435d7cd3d5027f85d73a5488a721e5c"
  else
    sha256 "d0f0241abb69e0aaa551af32a8f5cb62dff69b335d5c4a25ba0c2560e405093d"
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
