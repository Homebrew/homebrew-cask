cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.7"

  if Hardware::CPU.intel?
    sha256 "2709dd94e22ecfc8e7de0c7a7009160ed79e95ba91618c7307e24c26a33e978b"
  else
    sha256 "f9042bce83fe8446e22f6885285dd5fc2dca048d0b89cbf7f326a46102ffc440"
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
