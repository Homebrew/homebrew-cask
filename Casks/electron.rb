cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.1.2"

  if Hardware::CPU.intel?
    sha256 "d4382d3f01b750676a1f3c9e2273ad69cac16dc64a4145469c663bcda8d2471b"
  else
    sha256 "135dec87211fcefdb53ab1fef13344c7b71a321f7c4f6846f260c1e0848e73bf"
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
