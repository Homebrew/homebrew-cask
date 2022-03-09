cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.1.1"

  if Hardware::CPU.intel?
    sha256 "cfd4f4e8d728134ccafb0ca115999914638ca7555985c5a8c3477a6a07d7f3d8"
  else
    sha256 "1af9c6e1a7ee95c4b0f1ce8bca7cafb80d59ea79b085edb82e9a1992777929fd"
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
