cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.2.0"

  if Hardware::CPU.intel?
    sha256 "004a9e1bab9ff10554c96c0f6671d89a0302863c7ee2368ad450657c4d3793a1"
  else
    sha256 "794ab9ac816b92208f29cd3e1656b4eafdb0caf2e7b1c0a27ad2cbecbb6e44a6"
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
