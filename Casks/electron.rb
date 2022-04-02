cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.1"

  if Hardware::CPU.intel?
    sha256 "61de3ff1c1e49cc80c0a9423a02d30716c66d639ef565cce7902e8d867e8fef6"
  else
    sha256 "9a1307d4c4fb137a4bcd53ef8ecf0a3e5bec8de64424c9ad6c1f16d580fd9e94"
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
