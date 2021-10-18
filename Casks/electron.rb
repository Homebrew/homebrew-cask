cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.2.0"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  if Hardware::CPU.intel?
    sha256 "32d3d4e5f7dbb8fe035a7b91dc64c042eb930461424784d4c450e06768e7162d"
  else
    sha256 "a7982607416ca2d30d7f48fbc3b16ab072c46170b117123a5e9763f85227a5cb"
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
