cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.3.1"

  if Hardware::CPU.intel?
    sha256 "a91b089b5dc5b1279966511344b805ec84869b6cd60af44f800b363bba25b915"
  else
    sha256 "89fafef20426c0a3a2326172d222d29fc5d24d64c8910b7abddf61bd2c6a6700"
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
