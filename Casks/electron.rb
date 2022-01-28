cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.8"

  if Hardware::CPU.intel?
    sha256 "a3c5e5368165304fc9392e3a5b59480965cf0f91f7d889257e6a622f48051cbf"
  else
    sha256 "dc8414d7b9a967bda530c83a81720519931aebf541cfaed142ee2042c16e683a"
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
