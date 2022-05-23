cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.2.4"

  if Hardware::CPU.intel?
    sha256 "573f5b4f82434bd68b46f92bf1db6f5b2825b0a91da7b4f733eee55227f2babc"
  else
    sha256 "e5265d9e628d11ee2f831e752feb54c3417e0a52b189223db5571dde6eaf713e"
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
