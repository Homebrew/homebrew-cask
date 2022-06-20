cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.5"

  if Hardware::CPU.intel?
    sha256 "24eecbfa4f15a60403f9deed38f33e6e9c2336d331cec61e78d54b15064818fb"
  else
    sha256 "89660de71e28645e4e429dd154a97ecbeac93830505f6ac419c8cd26e0221946"
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
