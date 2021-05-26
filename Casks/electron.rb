cask "electron" do
  version "13.0.1"

  if Hardware::CPU.intel?
    sha256 "a65a44bfafcdfcdee0bb2b3515dab57e884e0700830ccd142e15f01e6c3a4976"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip",
        verified: "github.com/electron/electron/"
  else
    sha256 "e58e3ea3fffc8c3b280b0b6c22c685f9ecd82ef0340a5207d8b9c6f20e7c0197"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-arm64.zip",
        verified: "github.com/electron/electron/"
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
