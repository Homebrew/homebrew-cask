cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.1.0"

  if Hardware::CPU.intel?
    sha256 "24dd64a66b820c9553c5e5570907da6c98e808d33fac98072b9c2a8f1659cb14"
  else
    sha256 "97adf13306c9b3b304d3e9ddf68f5f7fb9b79c9a1342114e3671182f3cc9e808"
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
