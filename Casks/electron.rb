cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.3"

  if Hardware::CPU.intel?
    sha256 "1d8fbf2e69df970cfdf05716e99b0ffac6cc7bbe389a9ede02c269d5c33f70ea"
  else
    sha256 "1b8c85896e8473b7def633c17bad82f0ee971f7ffe17ec2b849c495a570ffa52"
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
